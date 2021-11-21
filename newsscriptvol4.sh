#! /usr/bin/bash

echo " Welcome to a news script! "

echo " What news would you like to get? "

echo " a) Business news "

echo " b) NBA news "

echo " c) NFL news

echo " d) Financial news

echo " e) Other "

read news

if [ $news = "a" ]
then
      curl getnews.tech/business+news
fi

if [ $news = "b" ]
then
      curl getnews.tech/NBA
fi

if [ $news = "c" ]
then
      curl getnews.tech/NFL
fi

if [ $news = "d" ]
then
      curl getnews.tech/financial+news
      
fi
     
if [ $news = "e" ]
then
      read kind
      
      curl getnews.tech/$kind
fi

