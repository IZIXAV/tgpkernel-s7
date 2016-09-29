# TGPKernel S7
A Custom Kernel for Samsung Galaxy S7 / S7 Edge, designed to be used with the TGP Custom ROM. 
The main purpose of this Kernel is to have a stock-like Kernel that runs on G930x (S7) 
variants, but capable of running the G935x (S7 Edge) Firmware. 


## How to use
- Adjust the toolchain path in build.sh and Makefile to match the path on your system. 
- Run build.sh and follow the prompts.
- When finished, the new .img or .zip file will be created in the build directory.
- If Java is installed, the .zip files will be automatically signed.


## Thanks to the following:
- Samsung Open Source Release Center for the Source code (http://opensource.samsung.com)
- The Linux Kernel Archive for the Linux Patches (https://www.kernel.org)
- Tkkg1994 or all his help with compiling / mods etc.
- osm0sis for Android Image Kitchen
- jesec for Sabermod GCC 7.0 ARM64 Kernel Toolchain
- arter97 for regmap_bulk_read fix


## Changelog

### v2.10 - 2016-09-29
- Added CPU Governors
- Added IO Schedulers

### v2.00 - 2016-09-25
- Updated Samsung source to G930FXXU1BPHJ
- Updated Linux source to 3.18.42
- Updated Ramdisk to G935FXXU1BPIF
- Added regmap_bulk_read fix

### v1.00 - 2016-09-15
- Initial Relase
- Kernel Source: G930FXXU1BPH6 / G935FXXU1BPH6
- Ramdisk: G930FXXU1BPHJ / G935FXXU1BPHJ
- Linux Version: 3.18.14
- Added init.d
- Added Insecure ADB
- Disabled DM_VERITY
- Disabled Forced File Encryption
- Disabled KNOX
- Disabled TIMA
- Disabled RKP
- Disabled KAP
- Disabled RPMB
- Disabled Secure Storage
- Enabled Lockup Detector
- Enabled rw for /system

