#!/bin/bash

# 很麻烦的初始化方法
NAME[0]="Zara"
NAME[1]="Qadir"
NAME[2]="Mahnaz"
NAME[3]="Ayan"
NAME[4]="Daisy"

# 数组调用方式
echo "First Index: ${NAME[0]}"
echo "Second Index: ${NAME[1]}"

# 获取数组中的所有元素,不过*与@ 在$后面的区别并不是这样的
echo -e "${NAME[*]} \n${NAME[@]}"

# #可以帮助获得数组的长度 或者 字符串变量的长度
# get the length of array and the element of the array
echo "${#NAME[*]} and ${#NAME[2]}"
