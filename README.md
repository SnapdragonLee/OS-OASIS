# OS-OASIS

BUAA OS 2021 代码，相关的资料已经很多了，这是一个存档仓库。



## Features

1. 本代码经过 reformating 改动过，希望可以给读者得到一个舒适的阅读体验，本代码通关 lab6。

   

2. 其它仓库的代码 **没有提供** 仓库内操作系统的编译运行环境，因此本仓库给出一个 **占用空间较小** 的编译、运行环境。该部分包含的二进制文件处于 `OS_ENV` 目录下，压缩以后仓库在30MB左右。

   

3. 更改了顶层的 Makefile，使得运行环境不需要出现在 Linux 绝对根目录 `/` 下，但因此也要求读者需要自行设置变量路径，详情请阅读 **Run** 部分。



## Run

Makefile 嵌套是正常的，但需要首先设置一下 PROJECT_ENV 环境变量，既可以设置为全局变量设置，也可以在 Shell 中临时设置。推荐使用脚本 `aTestGxemul.sh` 中的使用方法，运行后不会影响本身的环境。

```bash
export PROJECT_DIR="/home/NEED_TO_SET_DIR_FIRST/OS_ENV/"  # 注意一定要设置到绝对路径

make
${PROJECT_DIR}gxemul -E testmips -C R3000 -M 64 -d gxemul/fs.img gxemul/vmlinux

make clean
```



## Additional

有一些附加资料出现在了 `OS_Extram` 目录下，**有需要的可以自取**。





#### Acknowledgement

[BUAA-2021 roife/BUAA-OS: MIPS OS on R3000](https://github.com/roife/BUAA-OS)

[BUAA-2021 rfhits/Operating-System-BUAA-2021](https://github.com/rfhits/Operating-System-BUAA-2021)

[BUAA-2020 refkxh/BUAA_OS_2020Spring BUAA-2020](https://github.com/refkxh/BUAA_OS_2020Spring)

[BUAA-2019 login256/BUAA-OS-2019](https://github.com/login256/BUAA-OS-2019)
