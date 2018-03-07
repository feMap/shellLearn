#!/bin/bash

COUNTER=0
# the judgement [] must possess a ' '
while [ $COUNTER -lt 5 ]
do
# '+'must possess two ' '	
	COUNTER=`expr $COUNTER + 1`
	# let COUNTER++
	echo $COUNTER
done

# 如果想用更加接近正常使用的语法可以使用linux的let实现
# 下面是关于expr与let的应用实例
# expr 实例
$ s=`expr 2 + 3`
$ echo $s
# 5

# let 实例
$ let s=(2+3)*4
$ echo $s
# linux下的let还可完成自加运算

# echo -n表示不换行输出
echo 'type <CTRL -D> to terminate'
echo -n 'enter your most liked film:'

# 类似于while(scanf("%d, %d", &a, &b) != EOF)
# 这里还需补充关于scanf/getchar等函数的return值来加深学习
while read FILM
do
	echo "Yeah! great film the $FILM"
done
