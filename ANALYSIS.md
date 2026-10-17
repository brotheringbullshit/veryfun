# VeryFun.exe — analysis

`VeryFun.exe` is not a hand-written program. It is a **UPX-packed AutoIt v3
compiled script**, and the script is an AES-obfuscated process wiper that
launches three more AutoIt payloads via RunPE process hollowing.

Everything below was recovered from the file alone — nothing was executed.

---

## 1. Unpacking

```
md5    ef7b3c31bc127e64627edd8b89b2ae54
sha256 8b04fda4bee1806587657da6c6147d3e949aa7d11be1eefb8cd6ef0dba76d387
size   3,178,496 bytes
```

`file` reports `PE32 ... UPX compressed, 3 sections`. The stub is the standard
**UPX NRV2B** decompressor at RVA `0x389DE0`:

```
00789DE0  60                pusha
00789DE1  BE00407300        mov  esi,0x734000      ; src  = UPX1
00789DE6  8DBE00D0CCFF      lea  edi,[esi-0x333000]; dst = UPX0
00789DEC  57                push edi
00789DED  EB0B              jmp  short 0x789dfa
...
00789DF0  8A06              mov  al,[esi]         ; literal byte
00789DF3  8807              mov  [edi],al
00789F6  01DB              add  ebx,ebx          ; NRV2B bit reader
```

`upx -d` restores it cleanly (UPX 4.2.4). Resources are *not* compressed, so
the embedded script survives even in the packed file.

### Unpacked layout

| Section  | VA         | VSize     | RawPtr    | Note                       |
|----------|------------|-----------|-----------|----------------------------|
| `.text`  | `0x401000` | `0x8DD2E` | `0x0400`  | AutoIt3 interpreter        |
| `.rdata` | `0x48F000` | `0x2E10E` | `0x8E200` | imports, strings, IAT      |
| `.data`  | `0x4BE000` | `0x5200`  | `0xBC400` | globals                    |
| `.rsrc`  | `0x4C7000` | `0x2B373C`| `0xC1600` | icons + **SCRIPT** blob    |
| `.reloc` | `0x77B000` | `0x7130`  | `0x374E00`| relocations                |

Entry point `0x427F4A` (RVA `0x27F4A`):

```
427f4a:  call  0x435007        ; __security_init_cookie  (QPC+TID+PID mix)
427f4f:  jmp   0x427dd3        ; CRT startup, SEH prolog
```

The single resource of interest is `RCDATA` id 0, language `SCRIPT`,
**2,796,998 bytes** at file offset `0xC9A10`. Its trailer is `AU3!EA06` — the
encrypted-script container format.

---

## 2. What it actually is

Strings in `.rdata` give it away immediately:

```
0x48f96a  EAutoIt v3
0x48fac4  AutoIt v3 GUI
0x48fa88  >>>AUTOIT NO CMDEXECUTE<<<
0x48f9c8  /AutoIt3ExecuteScript
0x48fb2c  #comments-end
0x48f91a  EControl Panel\Mouse
```

Compiled with **Aut2Exe**. The build host leaked into the file:

```
C:\Users\Admin\AppData\Local\AutoIt v3\Aut2Exe\autA4D1.tmp
file creation time: 2016-09-22 22:25:25.117537
PE timestamp:       Thu Sep 22 19:25:28 2016
```

The application manifest requests `requireAdministrator`, matching the
`#RequireAdmin` directive in the script.

---

## 3. Script recovery

`autoit-ripper` (pip package `autoit-ripper`) decrypts and decompresses the
`SCRIPT` resource. CRC checks out, `EA06` blob found and decoded.

```
extracted/script.au3      8,957 lines / 3.8 MB
```

Structure:

| Lines     | Content                                                    |
|-----------|------------------------------------------------------------|
| 1 – 3300  | Win32 / Security / Memory API UDF, fully AES-obfuscated    |
| 3302–4748 | `$BBINARY[0..2]` — three embedded AutoIt payloads          |
| 8846–8906 | **the payload itself**                                     |
| 8907–8957 | `_GETCPUUSAGE`, `RANDOMHEX`                                |

### Deobfuscating the UDF

Every `DllCall` target, API name and `DllStruct` field is stored as

```autoit
BinaryToString ( _AESDECRYPT ( "<per-call AES key>" , "0x<hex blob>" ) )
```

Each call site carries its own AES key. The scheme is AES-256-CBC where the
**first 16 bytes of the blob are the IV** and the pad is `0x80` followed by
zeroes (`Func _AESDECRYPTCBC_PAD`). `tools/deob.py` peels all of it:

```
script.au3: decrypted 206/206 literals
```

`_RUNBINARY` before:

```autoit
DllCall ( BinaryToString ( _AESDECRYPT ( "p468cF..." , "0xEA976EE9..." ) ) ,
          "bool"  , BinaryToString ( _AESDECRYPT ( "Wm9tKqA..." , "0x0D159DED..." ) ) , ...
```

after:

```autoit
DllCall ( "kernel32.dll" , "bool" , "CreateProcessW" , "wstr" , $14MQHVBCH , ...
```

---

## 4. The payload

```autoit
#RequireAdmin
#NoTrayIcon
SETPRIVILEGE ( "SeDebugPrivilege" , 1 )
```

1. **Message box on a separate thread** via `MessageBoxIndirectW`:
   title *"FUN FUN FUN FUN FUN!!!!"*, text *"A very funny thing is happening!"*
2. **Process hollowing** — `_RUNBINARY` (RunPE) starts `cmd.exe` suspended via
   `CreateProcessW(CREATE_SUSPENDED)`, `NtUnmapViewOfSection`, writes the new
   image, rewrites `CONTEXT` and resumes. Refuses to run under WOW64.
3. **System.ini colours** — randomises `MessageBackColor` / `MessageTextColor`
   under `[386enh]`, which scrambles every Win16-era dialog on the box.
4. **Registry** — sets `LargePageMinimum = 1` under
   `HKLM\SYSTEM\CurrentControlSet\Control Session Manager\Memory Management`.
5. **Main loop — the actual wiper.** Every iteration it enumerates all
   processes and, for each one except itself and `cmd.exe`:

```autoit
$HMEMORY   = _MEMORYOPEN ( $APROCESS [ $I ] [ 1 ] )   ; OpenProcess, PROCESS_ALL_ACCESS
$SFINALADDR = RANDOMHEX ( )                            ; random 5-nibble address
$VALUE      = Random ( 0 , 999999999 , 1 )
_MEMORYWRITE ( $SFINALADDR , $HMEMORY , $VALUE , "dword" )
```

   i.e. **`WriteProcessMemory` of a random 32-bit value to a random address in
   every running process.** This is a deliberate, unsolvable system crasher.
6. Every 5 seconds, up to 5 times, it re-runs payload `[0]` decrypted.

---

## 5. Embedded payloads

`$AKEY[0] = "ue8V7EsuavNCzq1XLaQK5ilFWgRGJw6A"` (AES-256). Only
`$BBINARY[0]` is encrypted; `[1]` and `[2]` are handed to the loader verbatim.

| Blob       | Cipher             | Size     | After decrypt        |
|------------|--------------------|----------|----------------------|
| `$BBINARY[0]` | AES-256-CBC     | 455,680  | AutoIt3 PE, UPX      |
| `$BBINARY[1]` | plaintext hex  | 751,104  | AutoIt3 PE, UPX      |
| `$BBINARY[2]` | plaintext hex  | 409,600  | AutoIt3 PE, UPX      |

All three unpack to the **same** `.text` (`md5 ae900f36aa5061b45f702bfdd78d92a3`)
— Aut2Exe emits an identical interpreter stub regardless of the script. Only
the embedded `SCRIPT` resource differs. Each is a *further* AutoIt program:

### `payload_0` — desktop vandal
Full-screen layered transparent window (`WS_EX_LAYERED|TRANSPARENT|TOOLWINDOW`),
topmost. Spams `SetPixel` in random colours leaving a paint trail across the
desktop, and cycles `WinSetTrans` over every other window (skipping its own
`"VeryFun!"`). Repeats the same message box.

### `payload_1` — chiptune player
Loads **bassmod.dll** (34,308-byte PE, embedded raw) straight into memory via
`MEMORYDLLOPEN`, then `BASSMOD_Init(-1, 44100, 0)`,
`BASSMOD_MusicLoad(ptr, 0, len, 1024)`, `BASSMOD_MusicPlay()`. Eight FastTracker
II modules are embedded; one is picked at random:

| Module        | Title                 | Size     |
|---------------|-----------------------|----------|
| `$CHIPMUZIK`  | *chip or not?*        | 9,320    |
| `$CHIPMUSIK2` | *3D Galax*            | 78,492   |
| `$CHIPTUNE3`  | *unreeeal superhero 3*| 35,275  |
| `$CHIPTUNE4`  | *sleepy sunflower*    | 50,129   |
| `$CHIPTUNE5`  | *Mario Airlines*      | 82,195   |
| `$CHIPTUNE6`  | *titan #02*           | 38,515   |
| `$CHIPTUNE7`  | *knas*                | 22,917   |
| `$CHIPTUNE8`  | *japanese*            | 120,518  |

ESC is bound to stop playback and exit.

### `payload_2` — registry corruption
Enumerates `HKLM\SOFTWARE\Microsoft`, `HKCU\Software\Microsoft`,
`HKCU\Control Panel` and `HKLM\SYSTEM` and rewrites every **string** value
under subkeys whose name contains `"SZ"` with 56 hex characters of random
data, then boxes *"WOW, REGISTRY SEEMS FUCKED UP!!"*.

---

## 6. Disassembly

```
disasm/VeryFun.asm            5.5 MB, 189,099 instructions, 527 imports resolved
disasm/VeryFun.functions.txt  112 recovered function entries
```

The `.asm` is produced by `tools/disasm.py`, which runs
`objdump -d -M intel` and then rewrites every indirect IAT thunk

```
  4280b8:  call   *0x48f17c          ; KERNEL32.DLL!Sleep
  4280be:  call   *0x48f1c8          ; KERNEL32.DLL!VirtualAllocEx
```

using the PE import directory (including ordinal imports for `OLEAUT32.dll` and
`WSOCK32.dll`, which objdump can only render as `<none>`).

`.text` is 580,910 bytes. It is the stock AutoIt v3 interpreter — no symbols,
no debug directory, MSVC `/GS` stack cookies and SEH prologs throughout.

---

## 7. Verdict

Not malware in the exfiltration/ransomware sense, but this is a **destructive
payload, not a joke**. `VeryFun.exe` is a Windows process-wiper: it requests
admin, takes `SeDebugPrivilege`, opens every running process with
`PROCESS_ALL_ACCESS` and writes garbage to a random address in each one,
while scrambling `System.ini` dialog colours, a memory-management registry
value and every `*SZ*` string value under the Microsoft/HKLM\SYSTEM registry
trees. Running it requires a restore-from-backup, not a reboot.

The name and the harmless-looking message box are the payload; the wiper loop
is the point.

---

## Files

```
VeryFun.exe                  original, packed
VeryFun.unpacked.exe         UPX -d output (analysis target)
extracted/script.au3         recovered outer script
extracted/script.clean.au3   206 AES literals decrypted, blobs collapsed
extracted/payload_{0,1,2}.bin           raw embedded PEs
extracted/payload_{0,1,2}_unpacked.exe   UPX -d output
extracted/p{0,1,2}/script.au3           recovered inner scripts
extracted/p1/blobs/         bassmod.dll + 8 XM modules
disasm/VeryFun.asm           annotated i386 disassembly
disasm/VeryFun.functions.txt function table
tools/aesdec.py              decrypt $BBINARY payloads
tools/deob.py                decrypt + collapse the obfuscated script
tools/unblob.py              extract embedded blobs from a script
tools/disasm.py              objdump wrapper with IAT resolution
tools/funcs.py               recover function boundaries from padding
```