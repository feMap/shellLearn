#!/bin/bash

NAME[0]="Zara"
NAME[1]="Qadir"
NAME[2]="Mahnaz"
NAME[3]="Ayan"
NAME[4]="Daisy"
echo "First Index: ${NAME[0]}"
echo "Second Index: ${NAME[1]}"

echo -e "${NAME[*]} \n${NAME[@]}"

# get the length of array and the element of the array
echo "${#NAME[*]} and ${#NAME[2]}"