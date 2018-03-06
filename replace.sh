#!/bin/bash
a=10
# -e to make \n a sense
echo -e "Value of a is $a \n"

# attetion that `` not ''
DATE=`date`
echo "DATE is $DATE"

USERS=`who | wc -l`
echo "Logged in user are $USERS"

UP=`date ; uptime`
echo "UPtime is $UP"

# ${var},${var:-word},${var:=word},${var:?message},${var:+word}

echo ${var:-"Variable is not set"}
echo "1 - Value of var is ${var}"

echo ${var:="Variable is not set"}
echo "2 - Value of var is ${var}"

unset var
echo ${var:+"This is default value"}
echo "3 - Value of var is $var"

var="Prefix"
echo ${var:+"This is default value"}
echo "4 - Value of var is $var"

echo ${var:?"Print this message"}
echo "5 - Value of var is ${var}"