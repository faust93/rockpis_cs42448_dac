#!/bin/bash
# RockPi S kernel source dir
KERNEL_SRC="/home/faust/dev/alpine/src/kernel-rpis"

echo "Compiling dts..."
cpp -nostdinc -undef -x assembler-with-cpp -I ${KERNEL_SRC}/include cs4248.dts | dtc -@ -Hepapr -I dts -O dtb -o cs4248.dtbo -