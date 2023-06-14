#!/bin/bash


echo " This script will show the output of given file name"


read -p " Enter the file name:  " file

echo " ---------------------------------"

op=$(ls -d -l $file | cut -c1-1)


case $op in

-)  cat $file
;;
d) echo " the given input is an directory"
;;
*) echo " No filename given please give a valid filename"
esac
