#!/bin/bash

extension=.log
destination=/home/ismail/log-backup/


if [[ ! -d $destination ]]
then
 sudo mkdir -p $destination
else
  echo " folder already exist"
fi


sudo find /var/log/ -type f -name "*$extension" -exec "{}" cp "$destination" \;

echo "The logs have been copied"
~
~
