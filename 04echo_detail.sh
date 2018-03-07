#!/bin/bash

# Shell 的 echo 指令与 PHP 的 echo 指令类似，都是用于字符串的输出。
echo arg

# 注意理解下面两个命令输出都是一样的
echo "It is a test"
echo It is a test

# echo命令配合转义字符+ ""一起使用
echo -e "\"It is a test\""
# \c相当于吃掉了尾部默认的\n
echo -e "OK!\c"
echo "It is a test"

# 利用管道流命令来输出定向
echo "It is a test" > myfile

# this is a different part of -e
echo '$name\"'

# shell这个反斜点``类似于python中eval()命令,将字符串转化为命令行命令
echo `date`
