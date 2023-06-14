
function read-input() 
{

read -p "Enter 1st number: " num1
read -p "Enter 2nd number:  " num2

}


while true
do

echo "Select 1 for Add"
echo "Select 2 for Subtract"
echo "Select 3 for Multiply"
echo "Select 4 for Divide"
echo "Select 5 for Quit"
read -p "Enter your Choice" choice

if [ $choice -eq 1 ]
then
 read -p "Enter first number" Number1
 read -p "Enter second number" Number2
 a=$(( $Number1 + $Number2 ))
 echo "Answer=$a"
elif [ $choice -eq 2 ]
then
 read -p "Enter first number" Number1
 read -p "Enter second number" Number2
  #if [ $Number -lt $Number2 ]
  #then
  #  echo "Number1 is smaller than Number2"
  #else
  #fi
  s=$(( $Number1 + $Number2 ))
  echo "Answer=$s"
elif [ $choice -eq 3 ]
then
 read -p "Enter first number" Number1
 read -p "Enter second number" Number2
 m=$(( $Number1 * $Number2 ))
 echo "Answer=$m"
elif [ $choice -eq 4 ]
then
 read -p "Enter first number" Number1
 read -p "Enter second number" Number2
 d=$(( $Number1 \ $Number2 ))
 echo "Answer=$d"
 elif [ $choice -eq 5 ]
  break
 else
  continue
 fi

done

