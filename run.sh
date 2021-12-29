#!/bin/sh

echo '预处理，按任意键继续...' && read
gcc -E hello.c -o hello.i
echo 'hello.i 文件的内容如下：'
cat hello.i
echo '当前目录的内容：' `ls`

echo -e '\n编译，按任意键继续...' && read
echo 'hello.s 文件的内容如下：'
gcc -S hello.c -o hello.s
cat hello.s
echo '当前目录的内容：' `ls`

echo -e '\n汇编，按任意键继续...' && read
echo 'hello.o 文件的内容如下：'
gcc -c hello.c -o hello.o
xxd hello.o
echo '当前目录的内容：' `ls`

echo -e '\n链接，按任意键继续...' && read
gcc -o hello hello.c
echo 'hello 程序运行结果如下：'
./hello
echo '当前目录的内容：' `ls`
