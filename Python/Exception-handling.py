#exception handling

'''

while True:
    try:
     x = int(input("Enter the number "))
     y = x*x*x
     print("the multiplication is ", y)
     break
    except ValueError:
       print("Please enter only numbers")
    finally:
      print("Finally block has been executed")
'''

'''

import sys
for arg in sys.argv[1:]:
    try:
     f = open(arg, 'r')
    except OSError:
       print("There is a OS error")       
    else:
       print(arg, 'has', len(f.readlines()), 'lines')
       f.close()
    finally:
       print("The file operation completed")

'''
'''

a = [1, 2, 3]
try:
	print ("Second element = %d" %(a[1]))
	print ("Fourth element = %d" %(a[3]))
except:
	print ("An error occurred")
'''

'''

def new_fun(x,y):
    a = x + y
    print("The value of a is:", a)


try:
  print("Printing the function  ********")
  new_fun(int(input("Enter the number for x:")), int(input("Enter the number for y:")) )

except ValueError:
    print("Enter only  numbers")
finally:
    print("The operation is completed")
'''





