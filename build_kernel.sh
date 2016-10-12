#!/bin/bash

export ARCH=arm64
export CROSS_COMPILE=/opt/toolchains/UBERTC-aarch64-linux-android-4.9/bin/aarch64-linux-android-
mkdir output

make -C $(pwd) O=output VARIANT_DEFCONFIG=msm-perf_defconfig msm_defconfig
make -C $(pwd) O=output
