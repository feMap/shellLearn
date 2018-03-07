#!/bin/bash

a=10; b=20;

# 除了用[]的形式,还可以用test来进行判断
# shell的流程控制语句中一定需要if-fi来确定程序块内容,类似有for-done,case-esac
if [ $a == $b ]
then
 echo "a is equal to b"
fi

# if的嵌套结构的实现elif
a=20; b=10;
if [ $a != $b ]
then
 echo "a is not equal to b"
elif [ $a -gt $b ]
then
 echo "a is greater than b"
else
 echo "None of the condition met"
fi

# $[]相当于包含一个运算
# 下面的语句类似常见语句中的 num1=2*3 num2=1+5
# 但是在shell中就不能直接以这种形式进行赋值
num1=$[2*3]
num2=$[1+5]
# num2 = 1+5

# if语句配合test使用
if test $[num1] -eq $[num2]
then
 echo 'The two numbers are equal!'
else
 echo 'The two numbers are not equal!'
fi

