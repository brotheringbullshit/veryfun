#!/usr/bin/env python3
"""
Pull the large embedded blobs out of a recovered AutoIt script.

Compiled AutoIt scripts carry payloads as chains of `0x...` hex literals
assigned with &=. This walks the source, concatenates each variable's chunks
and writes the decoded bytes to disk, then runs `file` over the results so
you can see what they actually are.
"""
import re
import subprocess
import sys
from pathlib import Path

# optional Local/Global prefix, then the assignment itself
ASSIGN = re.compile(
    r"^\s*(?:(?:Local|Global)\s+)?(\$[A-Za-z0-9_]+)\s*(&?=)\s*(.*)$"
)
CHUNK = re.compile(r'"([^"]*)"')


def main() -> None:
    src = Path(sys.argv[1])
    outdir = Path(sys.argv[2]) if len(sys.argv) > 2 else src.parent / "blobs"
    minbytes = int(sys.argv[3]) if len(sys.argv) > 3 else 4096
    outdir.mkdir(parents=True, exist_ok=True)

    parts: dict[str, list[str]] = {}
    order: list[str] = []
    for line in src.read_text(encoding="utf-8", errors="replace").splitlines():
        m = ASSIGN.match(line)
        if not m:
            continue
        var = m.group(1)
        if var not in parts:
            order.append(var)
        parts.setdefault(var, []).extend(CHUNK.findall(m.group(3)))

    for var in order:
        blob = "".join(parts[var])
        # a lone declaration like Dim $x[10] has no hex at all
        if not blob or not re.fullmatch(r"(0x)?[0-9A-Fa-f]*", blob):
            continue
        if blob[:2].lower() == "0x":
            blob = blob[2:]
        try:
            data = bytes.fromhex(blob)
        except ValueError:
            continue
        if len(data) < minbytes:
            continue
        name = var.lstrip("$").lower()
        out = outdir / f"{name}.bin"
        out.write_bytes(data)
        desc = subprocess.run(["file", "-b", str(out)],
                              capture_output=True, text=True).stdout.strip()
        print(f"  {var:<16} {len(data):>9,} bytes  {out}  --  {desc}")


if __name__ == "__main__":
    main()