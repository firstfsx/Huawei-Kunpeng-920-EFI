# ACPI fix for D920S10 Windows/Linux boot

## Usage

Works with D920S10/THTF TK620/W510 firmware, should also work for other 1-way hi1620 systems (D920L11 maybe)

```
Shell> .\tablesfix.efi
```

or save it to EFI\BOOT\bootaa64.efi to chainload

## Build

this depends on [POSIX-UEFI](https://gitlab.com/bztsrc/posix-uefi), build it first, then

```bash
POSIX_UEFI_PATH=<path to posix-uefi> ./buildaa64.sh
```

## Details

0. Added DBG2 and SPCR for debug
1. PCCT table is corrupt, removed
2. RTC0 missing _HID, patched with ssdt, source is in fix-rtc0-hid.dsl
3. DDRC DDR2 and DDR3 make linux hisi_pmu stuck, removed via ssdt, source is in remove-ddrc.dsl
4. I have not found any gpu with win aa64 drivers, so use gop resolution changed it
5. When not invoked from cli, it chainloads bootmgr

## License

```text
ACPI fix for D920S10 boot
Copyright (C) 2023  Yun Dou <dixyes@gmail.com>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
```
