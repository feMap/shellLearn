#!/bin/bash

your_name="qinjx"
greeting="hello,"$your_name"!"
greeting_1="hello,${your_name}!"

echo $greeting $greeting_1

string="abcd"
echo ${#string}

string="femap is wonderful!"
echo ${string:0:5}

string="femap is wonderful!"
echo `expr index "$string" is`