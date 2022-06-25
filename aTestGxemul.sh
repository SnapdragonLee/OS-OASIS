#!/bin/bash
#run gxemul


export PROJECT_DIR="/home/NEED_TO_SET_DIR_FIRST/OS_ENV/"
make

${PROJECT_DIR}gxemul -E testmips -C R3000 -M 64 -d gxemul/fs.img gxemul/vmlinux
make clean
