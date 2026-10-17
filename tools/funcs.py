#!/usr/bin/env python3
"""
Recover a function table for a stripped i386 PE by scanning inter-function
padding in .text.

MSVC and the Delphi/Borland linker both align functions by emitting runs of
0xCC (int3) / 0x90 (nop) between them.  The first real instruction after such
a run (or after a RET/JMP that lands on padding) is a function entry, so we can
walk the padding and emit a sorted size table without needing symbols.
"""
import struct
import sys
from pathlib import Path

PAD = {0xCC, 0x90}
# Borland/Delphi also pads with these sequences between routines
DELPHI_PAD = {
    bytes.fromhex("8DB4000000000000"),      # lea eax,[eax+0]
    bytes.fromhex("B80000000000C3"),        # mov eax,0 / ret
    bytes.fromhex("55 8BEC 83C4F0 C3"),     # push ebp/mov ebp,esp/add esp,-16h/ret
}


def is_pad(buf, i, end) -> int:
    """Return length of the padding run starting at i (0 if not padding)."""
    if i >= end or buf[i] not in PAD:
        return 0
    j = i
    while j < end and buf[j] in PAD:
        j += 1
    return j - i


def main() -> None:
    path = Path(sys.argv[1])
    d = path.read_bytes()
    e = struct.unpack_from("<I", d, 0x3C)[0]
    coff = e + 4
    nsec = struct.unpack_from("<H", d, coff + 2)[0]
    optlen = struct.unpack_from("<H", d, coff + 16)[0]
    opt = coff + 20
    imagebase = struct.unpack_from("<I", d, opt + 28)[0]
    so = coff + 20 + optlen
    ep_rva = struct.unpack_from("<I", d, opt + 16)[0]

    text = None
    for i in range(nsec):
        o = so + i * 40
        nm = d[o:o + 8].rstrip(b"\x00").decode("latin1")
        vs, va, rs, ro = struct.unpack_from("<IIII", d, o + 8)
        if nm == ".text":
            text = (va, ro, min(rs, vs))
    if not text:
        raise SystemExit("no .text")
    rva, raw, size = text
    buf = d[raw:raw + size]
    end = len(buf)

    starts = {0}
    # the entry point is often reached straight after a `ret`, with no padding
    ep_off = ep_rva - rva
    if 0 <= ep_off < end:
        starts.add(ep_off)
    i = 0
    while i < end:
        n = is_pad(buf, i, end)
        if n >= 2:
            k = i + n
            # skip trailing alignment too
            while k < end and buf[k] in PAD:
                k += 1
            if k < end:
                starts.add(k)
            i = k
            continue
        i += 1

    fns = sorted(starts)
    rows = []
    for idx, s in enumerate(fns):
        e2 = fns[idx + 1] if idx + 1 < len(fns) else end
        rows.append((imagebase + rva + s, e2 - s))

    rows.sort(key=lambda r: -r[1])
    print(f"{path.name}: .text = {size:,} bytes, {len(rows)} recovered functions")

    if "-o" in sys.argv:
        dest = Path(sys.argv[sys.argv.index("-o") + 1])
        with dest.open("w", encoding="utf-8") as fh:
            fh.write(f"; recovered function table for {path.name}\n")
            fh.write(f"; .text RVA 0x{rva:08X}  ImageBase 0x{imagebase:08X}  "
                     f"EntryPoint VA 0x{imagebase + ep_rva:08X}\n")
            fh.write("; addr      size\n")
            for va, sz in sorted(rows):
                mark = "  ; <entry point>" if va == imagebase + ep_rva else ""
                fh.write(f"0x{va:08x} {sz:>7}{mark}\n")
        print(f"  full table -> {dest}")

    print(f"{'VA':>10}  {'size':>7}")
    for va, sz in rows[:30]:
        mark = "   <- entry point" if va == imagebase + ep_rva else ""
        print(f"  0x{va:08x}  {sz:>6}{mark}")
    print("  ...")
    big = sum(s for _, s in rows)
    print(f"  total covered: {big:,} / {size:,} bytes "
          f"({big * 100 // size}%)")


if __name__ == "__main__":
    main()