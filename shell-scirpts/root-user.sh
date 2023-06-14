#!/bin/bash

name=$(whoami)
id=0
echo "This script is to check if the given user is root or not"

if [ "$UID" -eq "$id" ] && [[ "$name" = "root" ]]
then
  echo " The current user is root user"
else
  echo "The user $USER is not root user"
fi