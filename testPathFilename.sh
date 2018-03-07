#! /bin/bash

# shell中一定注意有些空格是不能随便打的,例如=,有些空格是必须要的[]
path="/home/cam/book/long.file.name"

echo ${path##/*/}
echo ${path#/*/}
echo $path
echo ${path%.*}
echo ${path%%.*}

# 这个方法的核心理解就是
# #是从前往后匹配后面的表达式
# %是从后往前匹配表达式
# ##和%%的含义类似,就是在去除目录中已经包含的匹配字符串

# 下面是最常见到的结构
cd ${0%/*} || exit 1

# 这里$0表示的是.sh文件所在的目录,包含了文件名称
