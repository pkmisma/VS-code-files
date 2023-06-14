#!/bin/bash


green='\033[0;32m'
red='\033[0;31m'
clear='\033[0m'

echo " This script will generate a strong password for you"

while true
do
read -p "Enter the number of characters your want for your password:  " num

#password=$(tr -dc A-Za-z0-9 </dev/urandom | head -c $num ; echo '')

 if [ $num -lt 8 ]
 then
   echo -e   "${red} It is recommended to have atleast 8 characters to make your password strong ${clear}"
 elif [ -z $num ]
 then
    echo -e "${red} This field cannot be empty ${clear}"
 elif [ $num -ge 16 ]
 then
    echo -e   "${red} It is recommended not to have more than 16 characters ${clear}"
 elif [ $num =~ [0-9] ]
 then
    echo -e   "${red} Please only type numbers ${clear}"
 else
 break
 fi
done

while true
do
password=$(openssl rand -base64 $num)

  if [[ ${#password} -ge 8 ]]
  then
    if [[ $password =~ [A-Z] ]]
    then
     if [[ $password =~ [a-z] ]]
     then
       if [[ $password =~ [0-9] ]]
       then
        if [[ $password =~ [^a-zA-Z0-9] ]]
        then
          echo -e " Please use the password ${green} $password ${clear}"
          break
        else
           password=$(openssl rand -base64 $num)
        fi
       else
          password=$(openssl rand -base64 $num)
       fi
     else
          password=$(openssl rand -base64 $num)
     fi
    else
          password=$(openssl rand -base64 $num)
    fi
  else
      password=$(openssl rand -base64 $num)
  fi
done