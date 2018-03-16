#!/bin/bash

#############################################################
## This build script will export proper paths to toolchain ##
## and correct ARCH for device. Modify these values to fit ##
## your environment and run it before building.            ##
#############################################################

export CROSS_COMPILE=$(pwd)/prebuilt/linux-x86_64/bin/aarch64-linux-android-
export ARCH=arm64 && export SUBARCH=arm64

make clean
make mrproper
make wahoo_defconfig
make -j$(nproc --all)
