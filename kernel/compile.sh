#!/bin/bash

cd ~/kernel
make -j$(nproc) O=out ARCH=arm64 X01BD_defconfig
make -j$(nproc) O=out \
	ARCH=arm64 \
	SUBARCH=arm64 \
	PATH=~/clang/bin:/usr/bin:${PATH} \
	CC=~/clang/bin/clang \
	CROSS_COMPILE=~/clang/bin/aarch64-linux-gnu- \
	CROSS_COMPILE_ARM32=~/clang/bin/arm-linux-gnueabi-