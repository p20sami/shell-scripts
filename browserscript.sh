#! /usr/bin/bash

echo " Welcome to a text-based browser script! "

echo " To get started, enter the link of the website that you want to visit. "

read link

echo " What browser would you like to use? "

echo " a.) w3m "

echo " b.) lynx "

echo " c.) links "

read brs

if [ $brs = "a" ]
then
      w3m $link
fi

if [ $brs = "b" ]
then
      lynx $link
fi

if [ $brs = "c" ]
then
      links $link
fi
