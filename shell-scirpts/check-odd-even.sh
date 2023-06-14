#!/bin/bash

echo " This script will check if the given number is even or odd"

read -p " enter the number " n

if [ `expr $n % 2` == 0 ]
then
echo "The given number $input is Even number"
else
        echo " The given number $input is Odd number"
fi