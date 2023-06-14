#!/bin/bash

echo "This script prints the latest updated file in the given directory"

read -p "Enter the directory name(please provide absolute path): " dir

if [ -d $dir ]
then
    cd $dir
    ls -ltr | sort -rnk 8 | head -1
else
   echo "The given input is not a directory"
fi
