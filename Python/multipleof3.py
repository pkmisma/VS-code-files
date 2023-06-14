
print("Script to find the given number is multiple of 3/5")
num1 = int(input("Enter the number:  "))

if num1%3 == 0 and num1%5 != 0:
 print("Entered number is multiple of 3")

elif num1%5 == 0 and num1%3 != 0:
 print("Entered number is multiple of 5")

elif num1%5 == 0 and num1%3 == 0:
 print("Entered number is multiple of both 3 and 5")

else:
 print ("Entered number is not multiple of both 3 and 5")


