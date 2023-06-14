#!/bin/bash

echo " Please select any operation of your choice"

echo " 1. Addition
 2. Subtraction
 3. Multiply
 4. Divide
 5  Quit"

 read -p "enter your choice" choice

 read -p "Enter first number" num1
 read -p "Enter second number" num2

 case $choice in
 1) sum=$(( num1 + num2 )) 
    echo "The addition of 2 number is $sum" 
    ;;
 2) sub=$(( $num1 - $num2 )) 
    echo "The subtraction of 2 number is $sub"
    ;;
 3) mul=$(( $num1 * $num2 )) 
    echo "The multiply of 2 number is $mul"
    ;;
 4) div=$(( $num1 \ $num2 )) 
    echo "The divident of 2 number is $div" 
    ;;
 5) exit ;; 
 
 esac