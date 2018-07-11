#!/bin/bash

your_name="qinjx"
# shell中的字符串可以直接拼接,也可以放在字符串中间
greeting="hello,"$your_name"!"
greeting_1="hello,${your_name}!"

# echo 是自带换行符的
echo $greeting $greeting_1

string="abcd"
echo ${#string}

string="femap is wonderful!"
echo ${string:0:5}

string="femap is wonderful!"
echo `expr index "$string" is`
