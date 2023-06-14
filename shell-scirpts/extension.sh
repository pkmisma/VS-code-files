#!/bin/bash

echo "This script adds extension .new all files to a given directory"

read -p "Enter the folder name (please provide absolute path): " dir

if [ -d $dir ]
then
    cd $dir
    for i in `ls -lrt | awk '{ print $9 }'`
    do
            mv $i $i.new
    done
else
   echo "The give input is not a directory"
fi
