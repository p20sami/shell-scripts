#! /usr/bin/bash

echo " Welcome to a weather report script! "

echo " Please choose one from the following weather reports. "

echo " a) A simple weather report such as temperature etc.. "

echo " b) A more advanced weather report such as a barometric index, wind direction etc.. "

read report

if [ $report = "a" ]
then
      echo " Please state the name of the city of which you want to get the report for. "
      
      read city
      
      curl wttr.in/$city
      
      echo " Thank you for using this script! "
fi

if [ $report = "b" ]
then
      echo " Please state the name of the city of which you want to get the report for. "
      
      read city
      
      curl v2.wttr.in/$city
      
      echo " Thank you for using this script! "
      
fi

if [ $report != "a" || $report != "b" ]
then
      echo " You chose an invalid selection. Please choose a valid one! "
fi
