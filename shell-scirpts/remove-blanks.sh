#!/bin/bash

read -p " Enter the file name" file

cat $file | sed '/^\s*$/d'