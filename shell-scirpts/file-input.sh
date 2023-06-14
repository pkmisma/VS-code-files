#!/bin/bash


echo "This script finds the file and directory details"

read -p " Enter the file or directory name" input1

type=$(ls -d -l $input1 | cut -c1-1)

 if [[ "$type" = "d" ]]
 then
 echo "The give input is a directory"
 echo " Here is the ls of the input"
 echo $(ls -l $input1)
 
 elif [[ "$type" = "-" ]]
 then
 echo "The give input is a file"
 echo "Here is the ls of the input"
 echo $(ls -l $input1)
 elif [[ "$type" = "b" ]]
 then
  echo "The give input is a block special file"
  echo "Here is the ls of the input"
  echo $(ls -l $input1)
 elif [[ "$type" = "c" ]]
 then
  echo "The give input is a character special file"
  echo "Here is the ls of the input"
  echo $(ls -l $input1)
 elif [[ "$type" = "l" ]]
 then
  echo "The give input is a symbolic link"
  echo "Here is the ls of the input"
  echo $(ls -l $input1)
 elif [[ "$type" = "p" ]]
 then
  echo "The give input is a first-in, first-out (FIFO) pipe special file"
  echo "Here is the ls of the input"
  echo $(ls -l $input1)

 elif [[ "$type" = "s" ]]
 then
  echo "The give input is a local socket"
  echo "Here is the ls of the input"
  echo $(ls -l $input1)
 else
 
 echo " The given file/directory name does not exist"
 fi