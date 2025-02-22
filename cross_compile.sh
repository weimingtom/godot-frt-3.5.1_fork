#!/bin/sh

#sudo apt install scons
#

#build:
#. ./cross_compile.sh -j8

#clean:
#. ./cross_compile.sh -c

#
#modules/libmodules.frt.opt.arm64v8.a(systemdependent.frt.opt.arm64v8.o): In function `vp8_machine_specific_config':
#systemdependent.c:(.text+0x24): undefined reference to `arm_cpu_caps'
#
#gedit ./thirdparty/libvpx/vp8/common/generic/systemdependent.c
#:102
#to 0
##if ARCH_ARM
#    ctx->cpu_caps = 0;//arm_cpu_caps();


#see platform/frt/SCsub and platform/frt/detect_godot3.py
PATH=/home/wmt/work_trimui/aarch64-linux-gnu-7.5.0-linaro/bin:$PATH \
	scons \
	platform=frt \
	frt_arch=arm64v8 \
	frt_cross=auto \
	tools=no \
	target=release \
	verbose=no \
	CCFLAGS='-isystem /home/wmt/work_trimui/usr/include -isystem /home/wmt/work_trimui/usr/include/SDL2 -D_REENTRANT' \
	LINKFLAGS='-lSDL2 -L/home/wmt/work_trimui/usr/lib' \
	$*

