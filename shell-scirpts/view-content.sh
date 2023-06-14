#!/bin/bash


echo "This script will print the content of given file"


read -p "Enter the file name: " file

if [[ -f $file ]]
then
  cat $file
elif [[ -d $file ]]
then
  echo "The given input is a directory"
else
  echo " The given file does not exist"
fi
