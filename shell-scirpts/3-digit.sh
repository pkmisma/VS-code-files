#!/bin/bash


echo " This script will print if the given number is 3 digit"

read -p "Enter the number" num

if [[ $num -gt 99 ]] && [[ $num -lt 1000 ]]
then
   echo " The give number $num is 3 digit number"
else
   echo "The given number is not a 3 digit number"

fi
