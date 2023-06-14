
#!/bin/bash

function book () {
    book=address-book

    if [[ -f $book ]]
    then
      echo "address book available"
    else
       touch address-book
    fi
}

function address-book () {
echo "1. Search address book"
echo "2. Add entries "
echo "3. Remove entries "
echo "4. Exit"

}

function print_color(){
  NC='\033[0m' # No Color

  case $1 in
    "green") COLOR='\033[0;32m' ;;
    "red") COLOR='\033[0;31m' ;;
    "*") COLOR='\033[0m' ;;
  esac

  echo -e "${COLOR} $2 ${NC}"
}

function names () {
    while true 
    do
      read -p "Add the name to enter the address book:  " entry
      if [[ -z $entry ]]
      then
       print_color "red" "Name cannot be empty"
      else 
       break
      fi
    done
   }

book 

while true
do

echo " This is an address book script"

address-book

read -p " Enter your choice: " choice


if [[ $choice = 1 ]]
then
   read -p "Enter the name to search: " search
   result=$(cat address-book | grep -i $search)
   if [[ -z $result ]]
   then
           print_color "red" " Name $search not found in the address book "
   else
    print_color "green" "Entry found in the address book"
    final=$(grep -wi $search address-book)
    print_color "green" $final
   fi
elif [[ $choice = 2 ]]
then
        names
        add=$(egrep -iwo "[$entry]*" address-book)
        if [[ ! $add = $entry ]]
        then
        while true
        do
          read -p "Enter the phone number:  " number
          if [[ $number =~ ^[0-9]{10}$  ]]
          then
           read -p "Enter the location:  " location
           echo $entry-$number-$location >> address-book
           print_color "green" "Entry successfully added"
           break
          else
           print_color "red" "Please enter valid 10 digit phone number"
          fi
        done
        else
        print_color "red" " The given name $entry already exists in address book"
        fi
elif [[ $choice = 3 ]]
then
         read -p " Enter the name to remove: " remove
         value=$(grep -w $remove address-book)
         if [[ -z $value ]]
         then
           print_color "red" "The given name $remove not found in the address-book"
         else
         sed -i "s/$remove//g" address-book
         print_color "red"  "The entry $remove has been removed"
         fi   
elif [[ $choice = 4 ]]
then
   echo "see you soon bye..."
   break
else 
   print_color "red" " you have entered a invalid selection please enter valid number from 1 to 4"
fi

done