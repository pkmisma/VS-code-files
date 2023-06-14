#!/bin/bash

echo "This script will print the greater of 3 given number"

read -p "Enter the 1st number: " num1
read -p "Enter the 2nd number: " num2
read -p "Enter the 3rd number: " num3

if [[ "$num1" -gt "$num2" ]] && [[ "$num1" -gt "$num3" ]]
then
  echo "Number $num1 is greater of all 3 given numbers"
elif [[ "$num2" -gt "$num1"]] && [[ "$num2" -gt "$num3" ]]
then
  echo "Number $num2 is greater of all 3 given numbers"
else
  echo "Number $num3 is greater of all 3 given numbers"

fi
  
