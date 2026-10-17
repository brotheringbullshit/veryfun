#!/usr/bin/env python3
"""
Deobfuscate a recovered AutoIt3 script.

Two passes:
  1. Replace every  _AESDECRYPT ( "<key>" , "0x<hex>" )  with its plaintext.
     Each call site carries its own AES key, so this peels off the per-call
     obfuscation the "Win32 API" UDF uses to hide its DllCall targets.
  2. Collapse multi-megabyte hex literals (embedded DLLs / MOD tunes) down to a
     short  0x<NNN bytes>  marker so the logic is actually readable.

Usage: deob.py <script.au3> [-o out.au3]
"""
import re
import sys
from pathlib import Path

from Crypto.Cipher import AES

HEXRE = re.compile(r'"(0x[0-9A-Fa-f]{32,})"')
CALLRE = re.compile(
    r'_AESDECRYPT\s*\(\s*"([^"]*)"\s*,\s*"(0x[0-9A-Fa-f]+)"', re.IGNORECASE
)


def strip_pad(data: bytes) -> bytes:
    for i in range(len(data) - 1, max(len(data) - 17, -1), -1):
        if data[i] == 0x80:
            return data[:i]
    return data


def decrypt(key: str, hexstr: str) -> str:
    raw = bytes.fromhex(hexstr[2:] if hexstr[:2].lower() == "0x" else hexstr)
    if len(raw) <= 16 or len(key) not in (16, 24, 32):
        return None
    iv, ct = raw[:16], raw[16:]
    ct = ct[: len(ct) - (len(ct) % 16)]
    try:
        plain = strip_pad(AES.new(key.encode(), AES.MODE_CBC, iv).decrypt(ct))
    except Exception:  # noqa: BLE001
        return None
    try:
        return plain.decode("utf-8")
    except UnicodeDecodeError:
        return plain.decode("latin-1")


def show(value: str) -> str:
    """Render a decrypted value, quoting it only if it needs to be."""
    if value and all(c in "\t\r\n" or 0x20 <= ord(c) < 0x7F for c in value):
        return f'"{value}"' if (value[0].isalnum() is False or " " in value) else value
    return f'""  ; {value.encode("unicode_escape")[:60].decode()}'


def main() -> None:
    src_path = Path(sys.argv[1])
    out_path = Path(sys.argv[3]) if len(sys.argv) > 3 else src_path.with_suffix(".clean.au3")
    src = src_path.read_text(encoding="utf-8", errors="replace")

    stats = {"ok": 0, "fail": 0}

    def do_call(m: re.Match) -> str:
        got = decrypt(m.group(1), m.group(2))
        if got is None:
            stats["fail"] += 1
            return m.group(0)
        stats["ok"] += 1
        return show(got)

    src = CALLRE.sub(do_call, src)

    def do_hex(m: re.Match) -> str:
        n = (len(m.group(1)) - 2) // 2
        return f'"0x[{n} bytes]"'

    src = HEXRE.sub(do_hex, src)
    out_path.write_text(src, encoding="utf-8")

    total = stats["ok"] + stats["fail"]
    print(f"{src_path.name}: decrypted {stats['ok']}/{total} literals"
          f" -> {out_path}")


if __name__ == "__main__":
    main()