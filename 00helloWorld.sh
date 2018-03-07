#!/bin/bash

# 以后尝试在每个文件上写上题注内容
# Author: femap
# Copyright www.femap.com
# Script follow here:

echo "Hello World !"
# and you can use chmod +x ./file.sh not 'file.sh'

echo "What is your name?"

# read just like 'cin>>'' 
read PERSON
echo "Hello, $PERSON"

# example of varialble
variableName="value"
myUrl="http://see.xidian.edu.cn/cpp/linux/"
myNum=100

your_name="mozhiyan"
echo $your_name
echo ${your_name}

# 注意这个for循环的写法
for skill in Ada Coffe Action Java
do 
	echo "I am good at ${skill}Script"
done

# redefine the variable
myUrl="http://see.xidian.edu.cn/cpp/linux/"
echo ${myUrl}
myUrl="http://see.xidian.edu.cn/cpp/shell/"
echo ${myUrl}

# in the contrary
readonly myUrl
# myUrl="http://see.xidian.edu.cn/cpp/danpianji/"

# delete the variables
# unset myUrl
echo myUrl


# special variables

echo "File Name: $0"
echo "First Parameter: $1"
echo "First Parameter: $2"
echo "Quoted Values: $@"
echo "Quoted Values: $*"
echo "Total Number of Parameters : $#"

echo $$

# 关于$*与$@的区别
# 相同点: 都是引用所有的参数
# 不同点: 只有在双引号中体现出来,*是所有的参数作为一个整体,而@是参数一个个作为输出参数
# 主要用法区别应该是体现在管道流中输入输出的差异
