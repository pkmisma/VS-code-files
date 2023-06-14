sample_list = []
print(sample_list)

name_list = ["ismail", "saravana", "rajiv"]
print(name_list)
print(name_list[0])
#new_namelist = name_list + ganesh
namelist1 = ["jana", "arokia", "neo"]

name_list[0] = "pradeep"
#print(new_namelist)
name_list = name_list + namelist1
print(name_list)


find_name = input("Enter the name to find: ")

if find_name in name_list:
    print ("Name " + find_name + " is found")
else:
    print ("Name " + find_name + " not found")

for find_name in name_list:
    print(find_name + " new")

