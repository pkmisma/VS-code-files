#!/bin/bash
  
echo " This will print the number of files in the present working directory"

file_count() {
op=$(ls -p | grep -v / | wc -l)
        echo "The number of iles is $op"

}

file_count