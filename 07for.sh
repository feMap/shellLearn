#!/bin/bash

# 和Java、PHP等语言不一样，sh的流程控制不可为空

# 这个其实和Python中的for...in + 列表的结构很相似
for loop in 1 2 3 4 5
do
	echo "The value is: $loop"
done

# in后面文件的匹配项,*表达的其实是一个列表?
for FILE in $HOME/.bash*
do
	echo $FILE
done

# in后面接的是一个字符串
for str in 'This is a string'
do
	echo $str
done

