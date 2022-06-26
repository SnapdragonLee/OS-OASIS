### 挑战性任务——线程和信号量

 Click to addBookmark this page

线程（thread）和信号量（semaphore）是同步与互斥问题的重要概念。
在这个挑战任务中，我们希望你能够按照 POSIX 标准，在小操作系统中实现这两个机制。

POSIX Threads 也就是 pthreads 库是由 IEEE Std 1003.1c 标准定义的一组函数接口。它至少包含以下的函数：

- pthread_create 创建线程
- pthread_exit 退出线程
- pthread_cancel 撤销线程
- pthread_join 等待线程结束



POSIX Semaphore 是由 IEEE Std 1003.1b 标准定义的一组函数接口：

- sem_init 初始化信号量
- sem_destroy 销毁信号量
- sem_wait 对信号量 P 操作（阻塞）
- sem_trywait 对信号量 P 操作（非阻塞）
- sem_post 对信号量 V 操作
- sem_getvalue 取得信号量的值



题目要求如下：

**线程**

要求实现全用户地址空间共享，线程之间可以互相访问栈内数据。可以保留少量仅限于本线程可以访问的空间用以保存线程相关数据。（POSIX标准有规定相关接口也可以实现）

***\*信号量\****

POSIX标准的信号量分为有名和无名信号量。无名信号量可以用于进程内同步与通信，有名信号量既可以用于进程内同步与通信，也可以用于进程间同步与通信。要求至少实现无名信号量（上述函数）的全部功能。（不包括通过共享内存与其他进程共享）



学生要至少实现上述的两组函数，并实现要求的功能，请合理增加系统调用以及相应的数据结构。其他POSIX线程信号量相关接口会根据实现难度加分。

以 lab4 分支为基础，新建 lab4-challenge 分支，完成之后提交到同名的远程分支。