print("this is a calculator script")
#def inpt(): 
num1 = int(input("Enter the first number: "))
num2 = int(input("Enter he second number: "))
 #return

#inpt()
while (True):
    print("Here are the choices to select:")
    print("1. Addition")
    print("2. Subtraction ")
    print("3. Multiplication")
    print("4. Division")
    print("5. re-enter numer")
    print("6. Exit")

    choice = int(input("Enter the choice:  "))

    if choice == 1:
      print("The Addition of 2 numbers is ", num1+num2)
    elif choice == 2:
     print("The Subtraction of 2 numbers is ", num1-num2)
    elif choice == 3:
     print("The Multiplication of 2 numbers is ", num1*num2)
    elif choice == 4:
     print("The Division of 2 numbers is ", num1%num2)
    elif choice == 6:
     break
    # elif choice == 5:
    #   inpt()
    else:
     print("Please enter only value between 1- 4")
     continue


