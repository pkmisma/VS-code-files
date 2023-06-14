#!/bin/bash

echo "This script will print the given numbers in rev order"

if [ -z $1 ]
then
   echo " Please enter a number as command line argument as below"
   echo " scriptname.sh number"
else
        f=$(echo $1 | rev)
        echo $f
fi
