#!/bin/bash
#run gxemul


export PROJECT_DIR="/home/snapdragon_manjaro21/Project_Manjr/C_Based/OS_OASIS/OS_ENV/"
make

OS_ENV/gxemul -E testmips -C R3000 -M 64 -d gxemul/fs.img gxemul/vmlinux
make clean
