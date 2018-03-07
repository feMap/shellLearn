#!/bin/bash

# 字符串拼接
your_name="qinjx"
greeting="hello,"$your_name"!"
greeting_1="hello,${your_name}!"

echo $greeting $greeting_1

# 字符串长度
string="abcd"
echo ${#string}

# 字符串切片
string="femap is wonderful!"
echo ${string:0:5}

# 查找子字符串
string="femap is wonderful!"
echo `expr index "$string" is`
# expr index + 字符串 + 子字符串
# 最后得到子字符串开始位置序号,字符串序号从1开始
