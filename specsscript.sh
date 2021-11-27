#! /usr/bin/bash

echo " Welcome to a specs script! "

echo " What specs would you like to see? "

echo " a) Software "

echo " b) Hardware "

read specs

if [ $specs = "a" ]
then
        neofetch
        uname
fi

if [ $specs = "b" ]
then
        neofetch
        lscpu
        lspci
fi

