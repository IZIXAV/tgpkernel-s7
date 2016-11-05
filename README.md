# TGPKernel S7
A Custom Kernel for Samsung Galaxy S7 / S7 Edge, designed to be used with the TGP Custom ROM. 
The main purpose of this Kernel is to have a stock-like Kernel that runs on G930x (S7) 
variants, but capable of running the G935x (S7 Edge) Firmware. 


## How to use
- Adjust the toolchain path in build.sh and Makefile to match the path on your system. 
- Run build.sh and follow the prompts.
- When finished, the new .img or .zip file will be created in the build directory.
- If Java is installed, the .zip files will be automatically signed.


## Credit and Thanks to the following:
- Samsung Open Source Release Center for the Source code (http://opensource.samsung.com)
- The Linux Kernel Archive for the Linux Patches (https://www.kernel.org)
- @Tkkg1994 or all his help and numerous code samples from his source
- @osm0sis for Android Image Kitchen
- @jesec for Sabermod GCC 7.0 ARM64 Kernel Toolchain and Fingerprint Fix
- @arter97 for regmap_bulk_read fix
- @jcadduono for SELinux Patch
- @lyapota for some Governors, Schedulers and SELinux Patch


## Changelog

### v3.02 - 2016-11-05
- Reverted Insecure ADB Patch
- Enabled TCP Algorithms

### v3.01 - 2016-11-02
- Updated Samsung source to G930FDXXU1BPJ7

### v3.00 - 2016-10-28
- Updated Samsung source to G930FDXXU1BPJ7

### v2.60 - 2016-10-25
- Updated Linux source to 3.18.44
- Fixed up defconfig files

### v2.50 - 2016-10-21
- Updated Ramdisk to G935FXXU1BPJ7

### v2.41 - 2016-10-14
- Added SELinux forced enforcing/permissive Patch (@jcadduono, @lyapota, @Tkkg1994)

### v2.40 - 2016-10-12
- Updated Linux source to 3.18.43

### v2.30 - 2016-10-06
- Disabled CIFS/NFS/ISO9660/Joilet/UDF Filesystems (Revert)
- Fixed bug in include/linux/cpufreq.h
- Enabled conservative in CPU Governors
- A-Z Sorted IO Schedulers in block/makefile
- Text fix for Lionheart CPU Governor
- Added more CPU Governers (@Tkkg1994)
- Added more IO Schedulers (@Tkkg1994)

### v2.21 - 2016-10-03
- Fixed init file in Ramdisk to support F2FS

### v2.20 - 2016-10-02
- Added Frandom Support
- Activated powersave Governor
- Activated joystick_xpad Support
- Disabled Forced Encryption
- ISO9660 / Joilet UDF Support
- NTFS Support
- F2FS Support
- NFS Support
- CFIS Support

### v2.10 - 2016-09-29
- Added CPU Governors (@lyapota)
- Added IO Schedulers (@lyapota)

### v2.00 - 2016-09-25
- Updated Samsung source to G930FXXU1BPHJ
- Updated Linux source to 3.18.42
- Updated Ramdisk to G935FXXU1BPIF
- Added regmap_bulk_read fix (@arter97)

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

