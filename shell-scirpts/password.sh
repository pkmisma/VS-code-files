#!/bin/bash

green='\033[0;32m'
red='\033[0;31m'
clear='\033[0m'

while true
do

echo "Please enter your password";
stty -echo
read password;
stty echo

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
         echo -e " ${green}The Entered password is strong ${clear}"
      else
         echo -e "${red} The password does not contain special character${clear}"
      fi
     else
          echo -e " ${red} The password does not contain a number${clear}"
     fi
   else
          echo -e "${red} The password does not contain lower case letter${clear}"
   fi
  else
          echo -e "${red} The password does not contain Upper case Letter${clear}"
  fi
else
      echo -e "${red} The password should be atleast 8 characters${clear}"
fi
break
done
