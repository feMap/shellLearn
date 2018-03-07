#!/bin/bash

echo 'Input a number between 1 to 4'
# echo -e表示可以用转义等特殊字符
echo -e 'Your number is :\c'
read aNum

case $aNum in 
	1) echo 'You select 1'
	;;
	2) echo 'You select 2'
	;;
	3) echo 'You select 3'
	;;
	4) echo 'You select 4'
	;;
	# shell中的default用的是*表示
	# 最后结束可以用的break来跳出循环,这里现在是;;,主要是用来分割各种case
	*) echo 'You do not select a number betwewn 1 to 4'
	;;
esac

basename ${0}

# printf "%s" basename 

option="${1}"
case ${option} in
   -f) FILE="${2}"
      echo "File name is $FILE"
      ;;
   -d) DIR="${2}"
      echo "Dir name is $DIR"
      ;;
   *) 
      echo "`basename ${0}`:usage: [-f file] | [-d directory]"
      exit 1 # Command to come out of the program with status 1
      ;;
esac
