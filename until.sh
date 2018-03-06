#!/bin/bash

a=0

until [ ! $a -lt 10 ]
do
	echo $a
	a=`expr $a + 1`
done

printf '\n'

b=0

while [ $b -lt 10 ]
do
	echo $b
	b=`expr $b + 1`
done