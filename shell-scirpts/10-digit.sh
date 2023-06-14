#!/bin/bash

# Continue prompting the user for a 10-digit number until they provide one
while true; do
  read -p "Enter a 10-digit number: " number

  # Check if the number has 10 digits
  if [[ $number =~ ^[0-9]{10}$ ]]; then
    echo "Thank you for entering a valid 10-digit number."
    break
  else
    echo "The number you entered is not a 10-digit number. Please try again."
  fi
done