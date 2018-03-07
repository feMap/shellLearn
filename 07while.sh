#!/bin/bash

COUNTER=0
# the judgement [] must possess a ' '
while [ $COUNTER -lt 5 ]
do
# '+'must possess two ' '	
	COUNTER=`expr $COUNTER + 1`
	echo $COUNTER
done

echo 'type <CTRL -D> to terminate'
echo -n 'enter your most liked film:'

while read FILM
do
	echo "Yeah! great film the $FILM"
done