#!/bin/bash
  
echo " this script will tell you the number of files in the directory"

read -p "Enter the directory name (Pls provide absolute path):  " dir

file_count () {
   cd $dir
   fc=`ls -l | wc -l`

}

file_count

echo "The total files in this directory $dir is $fc"


