#!/bin/bash
#Cleaning Script written by djb77

# Clean Build Data
make clean
make ARCH=arm64 distclean

# Remove Build Log
[ -f "$PWD/build.log" ] && rm -f $PWD/build.log

# Remove Created Ramdisk Files
[ -f "$PWD/build-s7/image-new.img" ] && rm -f $PWD/build-s7/image-new.img
[ -f "$PWD/build-s7/ramdisk-new.cpio.gz" ] && rm -f $PWD/build-s7/ramdisk-new.cpio.gz
[ -f "$PWD/build-s7/split_img/boot.img-dtb" ] && rm -f $PWD/build-s7/split_img/boot.img-dtb
[ -f "$PWD/build-s7/split_img/boot.img-zImage" ] && rm -f $PWD/build-s7/split_img/boot.img-zImage
[ -f "$PWD/build-s7edge/image-new.img" ] && rm -f $PWD/build-s7/image-new.img
[ -f "$PWD/build-s7edge/ramdisk-new.cpio.gz" ] && rm -f $PWD/build-s7edge/ramdisk-new.cpio.gz
[ -f "$PWD/build-s7edge/split_img/boot.img-dtb" ] && rm -f $PWD/build-s7edge/split_img/boot.img-dtb
[ -f "$PWD/build-s7edge/split_img/boot.img-zImage" ] && rm -f $PWD/build-s7edge/split_img/boot.img-zImage

# Removed Created dtb Folder
[ -d "$PWD/arch/arm64/boot/dtb" ] && rm -rf $PWD/arch/arm64/boot/dtb

# Recreate Ramdisk Placeholders
echo "" > build-s7/ramdisk/data/.placeholder
echo "" > build-s7/ramdisk/dev/.placeholder
echo "" > build-s7/ramdisk/lib/modules/.placeholder
echo "" > build-s7/ramdisk/oem/.placeholder
echo "" > build-s7/ramdisk/proc/.placeholder
echo "" > build-s7/ramdisk/sys/.placeholder
echo "" > build-s7/ramdisk/system/.placeholder
echo "" > build-s7edge/ramdisk/data/.placeholder
echo "" > build-s7edge/ramdisk/dev/.placeholder
echo "" > build-s7edge/ramdisk/lib/modules/.placeholder
echo "" > build-s7edge/ramdisk/oem/.placeholder
echo "" > build-s7edge/ramdisk/proc/.placeholder
echo "" > build-s7edge/ramdisk/sys/.placeholder
echo "" > build-s7edge/ramdisk/system/.placeholder
