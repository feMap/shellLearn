#!/bin/bash

cd ${0%/*} || exit 1 # run from this dictionary

mkdir remountFILE
who > ./remountFILE/users
cat ./remountFILE/users


echo line 1 > users
cat ./remountFILE/users

echo line 2 >>users
cat ./remountFILE/users
