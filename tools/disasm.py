#!/usr/bin/env python3
"""
Produce an annotated i386 disassembly of a (PE) image using only binutils.

objdump gives us the instruction stream but leaves every IAT thunk as an opaque
`call *0x48f374`, which is useless for reading control flow. This wrapper:

  1. parses the PE import directory to build  IAT address -> "DLL!Symbol",
  2. runs `objdump -d -M intel` and rewrites those thunks to
     `call *0x48f374  # KERNEL32.DLL!Sleep`,
  3. annotates the entry point and drops a header with the section layout.

Usage: disasm.py <file.exe> [-o out.asm]
"""
import re
import struct
import subprocess
import sys
from pathlib import Path

SYMBOLS_BY_ORDINAL = {
    # OLEAUT32.dll / WSOCK32.dll are imported by ordinal, which is all objdump
    # gives us.  Only the ones actually referenced here are worth naming.
    "OLEAUT32.dll": {
        2: "SysAllocString", 3: "SysReAllocString", 6: "SysFreeString",
        7: "SysStringLen", 8: "VariantInit", 9: "VariantClear",
        10: "VariantCopy", 11: "VariantChangeType", 12: "VariantChangeTypeEx",
        23: "SafeArrayCreateVector", 24: "SafeArrayGetElement",
        31: "SafeArrayPutElement", 32: "SafeArrayCopy",
        37: "VarBstrFromDate", 38: "VarBstrFromI4", 39: "VarDateFromI4",
        41: "VarCyFromI4", 77: "VarBstrCat", 146: "SysAllocStringLen",
        163: "CreateDispTypeInfo", 164: "CreateStdDispatch",
        185: "OleLoadPicture", 186: "OleLoadPictureEx",
        220: "SafeArrayCreate", 411: "SysStringByteLen",
        418: "RegisterActiveObject", 442: "OleCreateFontIndirect",
        443: "OleCreatePictureIndirect",
    },
    "WSOCK32.dll": {
        1: "accept", 2: "bind", 3: "closesocket", 4: "connect",
        9: "getpeername", 10: "getsockname", 11: "getsockopt",
        12: "htonl", 13: "htons", 15: "inet_addr", 16: "inet_ntoa",
        17: "listen", 18: "ntohl", 19: "ntohs", 20: "recv",
        21: "recvfrom", 23: "sendto", 52: "gethostbyname",
        57: "gethostbyaddr", 111: "WSAStartup", 115: "WSACleanup",
        116: "WSASetLastError", 151: "WSAGetLastError",
    },
}


def rva2off(rva, secs):
    for name, va, vs, ro, rs in secs:
        if va <= rva < va + max(vs, rs):
            return ro + (rva - va)
    return None


def parse_pe(path: Path):
    d = path.read_bytes()
    e = struct.unpack_from("<I", d, 0x3C)[0]
    coff = e + 4
    nsec = struct.unpack_from("<H", d, coff + 2)[0]
    optlen = struct.unpack_from("<H", d, coff + 16)[0]
    opt = coff + 20
    magic = struct.unpack_from("<H", d, opt)[0]
    imagebase = struct.unpack_from("<I", d, opt + 28)[0]
    dd = opt + (96 if magic == 0x10B else 112)
    imp_rva, imp_sz = struct.unpack_from("<II", d, dd + 8)

    secs = []
    so = coff + 20 + optlen
    for i in range(nsec):
        o = so + i * 40
        nm = d[o:o + 8].rstrip(b"\x00").decode("latin1")
        vs, va, rs, ro = struct.unpack_from("<IIII", d, o + 8)
        secs.append((nm, va, vs, ro, rs))

    iat: dict[int, str] = {}
    off = rva2off(imp_rva, secs)
    if off is None:
        return imagebase, secs, iat, None
    while True:
        ilt, ts, fc, nm, iat_rva = struct.unpack_from("<IIIII", d, off)
        if not nm:
            break
        no = rva2off(nm, secs)
        dll = d[no:d.index(b"\0", no)].decode("latin1")
        thunk = ilt or iat_rva
        to = rva2off(thunk, secs)
        idx = 0
        while True:
            val = struct.unpack_from("<I", d, to + idx * 4)[0]
            if not val:
                break
            va = imagebase + iat_rva + idx * 4
            if val & 0x80000000:
                sym = SYMBOLS_BY_ORDINAL.get(dll, {}).get(val & 0xFFFF,
                                                          f"ordinal#{val & 0xFFFF}")
            else:
                ho = rva2off(val, secs)
                hint = struct.unpack_from("<H", d, ho)[0]
                sym = d[ho + 2:d.index(b"\0", ho + 2)].decode("latin1")
                sym = f"{sym} (hint {hint})" if hint else sym
            iat[va] = f"{dll}!{sym}"
            idx += 1
        off += 20
    return imagebase, secs, iat, imp_rva


def main() -> None:
    src = Path(sys.argv[1])
    out = Path(sys.argv[3]) if len(sys.argv) > 3 else src.with_suffix(".asm")
    imagebase, secs, iat, _ = parse_pe(src)

    ep_rva = None
    d = src.read_bytes()
    e = struct.unpack_from("<I", d, 0x3C)[0]
    ep_rva = struct.unpack_from("<I", d, e + 4 + 20 + 16)[0]

    raw = subprocess.run(
        ["objdump", "-d", "-M", "intel", "--no-show-raw-insn", str(src)],
        capture_output=True, text=True, check=True).stdout

    thunk = re.compile(r"^(\s*[0-9a-f]+:\s+)(?:call|jmp|notrack call)\s+\*?(0x[0-9a-f]+)\s*(.*)$")

    def fix(line: str) -> str:
        m = thunk.match(line)
        if not m:
            return line
        target = int(m.group(2), 16)
        name = iat.get(target)
        if not name:
            return line
        return f"{m.group(1)}{m.group(3).rstrip()}\t; {name}"

    body = [fix(l) for l in raw.splitlines()]

    hdr = [
        f"; {'=' * 74}",
        f"; Disassembly of {src.name}",
        f"; ImageBase 0x{imagebase:08X}   EntryPoint RVA 0x{ep_rva:08X}"
        f" (VA 0x{imagebase + ep_rva:08X})",
        ";",
        "; Sections:",
    ]
    for nm, va, vs, ro, rs in secs:
        hdr.append(f";   {nm:<8} VA 0x{imagebase + va:08X}  VSize 0x{vs:08X}"
                   f"  RawPtr 0x{ro:08X}  RawSize 0x{rs:08X}")
    hdr.append(f";")
    hdr.append(f"; {len(iat)} import thunks resolved and annotated as "
               f"<DLL>!<Symbol>")
    hdr.append(f"; {'=' * 74}")
    hdr.append("")

    body.insert(0, "\n".join(hdr))
    out.write_text("\n".join(body) + "\n", encoding="utf-8")

    nins = sum(1 for l in body if re.match(r"^\s*[0-9a-f]+:", l))
    print(f"{src.name}: {nins:,} instructions, {len(iat)} imports -> {out}")


if __name__ == "__main__":
    main()
