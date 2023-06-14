#!/bin/bash
  
echo " This script will get one parameter as input and reverse it"

if [[ "$1" = *0* ]]
then
    echo "Input is less than 0, retry with a different number"
elif [[ -z "$1"  ]]
then
    echo "ERROR: Retry with one parameter"
else
x=$(echo $1 | rev)
    echo "This is the reverse of given number $x"
fi