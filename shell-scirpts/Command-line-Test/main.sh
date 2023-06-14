#!/bin/bash

green='\033[0;32m'
red='\033[0;31m'
clear='\033[0m'

echo "My Command Line Test"

echo "Please choose the below option"

#while true
#do
  echo "1. Sign Up"
  echo "2. Sign In"
  echo "3. Exit"

  echo -e "${red} Script Exit Time out is set ${clear}"

  read -p "Please choose your Option:  " choice

  if [[ choice -eq 1 ]]
  then
     echo "My Command Line Test"
     echo "Sign Up screen: "
     read -p "Please choose your Username: " user_name
     if [[ -f ${user_name}.csv ]]
     then
     echo -e "${red} The user $user_name already present ${clear}"
     else
     touch ${user_name}.csv
     while true
     do
     echo "Please enter your password";
     stty -echo
     read passwd;
     stty echo
     echo "Please re-enter your pasword";
     stty -echo
     read passwd1;
     stty echo
      if [[ $passwd -eq $passwd1 ]]
      then
        echo $user_name $passwd >> ${user_name}.csv
        break
      else
          echo -e "${red} The passwords do not match ${clear}"
          continue
      fi
     done
   echo -e "${green} Registration successfully Completed ${clear}"
   read -n 1 -s -r -p "Press any key to continue"
  fi
elif [[ $choice -eq 2 ]]
then
    while true
    do
    read -p "Enter your Username: " user_name1
    if [[ -f ${user_name1}.csv ]]
    then
      check_usr=$(cat ${user_name1}.csv | awk '{print $1}')
      if [[ $check_usr = $user_name1 ]]
      then
       echo "Please Enter your pasword";
       stty -echo
       read passwd2;
       stty echo
       check_passwd=$(cat ${user_name1}.csv | awk '{print $2}')
        if [[ $check_passwd = $passwd2 ]]
        then
         while true
         do
                 echo "1. Take a Test"
                 echo "2. View your Test"
                 echo "3. Exit"
                 read -p "Please choose your option:  " t_choice
                 if [[ t_choice -eq 1 ]]
                 then
                         cat question_bank.csv |  head -1 | tr , "\n"
                         read -p "Choose your option: " q1
                         if [[ q1 = a ]]
                         then
                                 echo "$(cat question_bank.csv | head -1)" >> answer_${user_name1}.csv
                         elif [[ q1 = b ]]
                         then

                         else
                                 echo "You have not Entered a valid option"
                         fi
                 else
                   break
                 fi
         done
        else
             echo -e "${red} The entered password does not match please try again ${clear}"
             continue
        fi
      else
        echo -e "${red} The entered username does not match please try again ${clear}"
        continue
      fi
     else
       echo "The entered username $user_name1 not available Please sign up"
     fi
     done



fi

#done



