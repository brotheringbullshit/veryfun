#!/usr/bin/env python3
"""
Decrypt the AES-obfuscated literals and embedded payloads in VeryFun.exe's
recovered AutoIt3 script.

Scheme (from Func _AESDECRYPT in the script):
  IV   = first 16 bytes of the blob
  body = rest, AES-256-CBC decrypted with $AKEY[0]
  pad  = 0x80 followed by zero bytes  (Func _AESDECRYPTCBC_PAD)
"""
import re
import sys
from pathlib import Path

from Crypto.Cipher import AES

ROOT = Path(__file__).resolve().parent.parent
SCRIPT = ROOT / "extracted" / "script.au3"
KEY = b"ue8V7EsuavNCzq1XLaQK5ilFWgRGJw6A"   # $AKEY[0]


def unhex(h: str) -> bytes:
    h = h.strip()
    if h[:2].lower() == "0x":
        h = h[2:]
    return bytes.fromhex(h)


def strip_pad(data: bytes) -> bytes:
    """_AESDECRYPTCBC_PAD: walk back from the end looking for the 0x80 marker
    within the final 16 bytes; everything from there on is padding."""
    for i in range(len(data) - 1, max(len(data) - 17, -1), -1):
        if data[i] == 0x80:
            return data[:i]
    return data


def decrypt_blob(hexstr: str) -> bytes:
    raw = unhex(hexstr)
    if len(raw) <= 16:
        raise ValueError("blob too short")
    iv, ct = raw[:16], raw[16:]
    if len(ct) % 16:
        ct = ct[: len(ct) - (len(ct) % 16)]
    return strip_pad(AES.new(KEY, AES.MODE_CBC, iv).decrypt(ct))


# ---------------------------------------------------------------- payloads
def collect_payload(src: str) -> dict[int, str]:
    """Gather the concatenated hex chunks assigned to each $BBINARY[i]."""
    out: dict[int, list[str]] = {}
    # "\n$BBINARY [ 0 ] = " starts a value, " &= " continues it.
    pat = re.compile(r"\$BBINARY\s*\[\s*(\d+)\s*\]\s*(&?=)\s*(.*)")
    for line in src.splitlines():
        m = pat.search(line)
        if not m:
            continue
        idx = int(m.group(1))
        chunks = re.findall(r'"([^"]*)"', m.group(3))
        out.setdefault(idx, []).extend(chunks)
    return {k: "".join(v) for k, v in out.items()}


def main() -> None:
    src = SCRIPT.read_text(encoding="utf-8", errors="replace")
    dest = ROOT / "extracted"
    dest.mkdir(exist_ok=True)

    # Only $BBINARY[0] is AES-wrapped; the app does
    #   $BBINARYDECRYPT = _AESDECRYPT($AKEY[0], $BBINARY[0])
    #   _RUNBINARY($BBINARY[1], ...) / _RUNBINARY($BBINARY[2], ...)
    # so [1] and [2] are handed to the reflective loader verbatim.
    ENCRYPTED = {0}

    payloads = collect_payload(src)
    for idx, hexstr in sorted(payloads.items()):
        if not hexstr:
            continue
        try:
            plain = decrypt_blob(hexstr) if idx in ENCRYPTED else unhex(hexstr)
        except Exception as exc:  # noqa: BLE001
            print(f"  $BBINARY[{idx}] FAILED: {exc}")
            continue
        out = dest / f"payload_{idx}.bin"
        out.write_bytes(plain)
        print(f"  $BBINARY[{idx}]: {len(plain):>9,} bytes -> {out.name}")
        # sanity: is it a PE / does it have a recognisable header?
        if plain[:2] == b"MZ":
            print(f"      -> PE executable (MZ)")
        else:
            head = plain[:16].hex(" ")
            print(f"      -> head: {head}")


if __name__ == "__main__":
    sys.exit(main())