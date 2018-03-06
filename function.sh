#!/bin/bash

Hello(){
	echo "Url is http://see.sidian.edu.cn/cpp/shell/"
}

# Invoke your function
Hello

funWithReturn(){
	echo "The function is to get the sum of two numbers..."
	echo -n "Input first numbers:"
	read aNum
	echo -n "Input another numbers:"
	read anotherNum
	echo "The two numbers are $aNum and $anotherNum !"
	return $(($aNum+$anotherNum))
}

funWithReturn

# Capture value returned by last command
ret=$?
echo "The sum of two numbers is $ret !"

# calling one function from another
number_one(){
	echo "Url_1 is http://see.xidian.edu.cn/cpp/shell/"
	number_two
}

number_two(){
	echo "Url_2 is http://see.xidian.edu.cn/cpp/u/xitong/"
}

number_one


funWithParam(){
   echo "The value of the first parameter is $1 !"
   echo "The value of the second parameter is $2 !"
   echo "The value of the tenth parameter is $10 !"
   echo "The value of the tenth parameter is ${10} !"
   echo "The value of the eleventh parameter is ${11} !"
   echo "The amount of the parameters is $# !"  # 参数个数
   echo "The string of the parameters is $* !"  # 传递给函数的所有参数
}

funWithParam 1 2 3 4 5 6 7 8 9 34 73

