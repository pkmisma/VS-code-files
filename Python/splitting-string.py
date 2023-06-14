split_string = "This is a sentence to be splitted "
var2 = "345"
print(split_string)
print(type(split_string))
print(len(split_string))
print(split_string, var2, sep = "\t")
print(split_string.split())
print(split_string.split('1'))
split_string = split_string.split()

print(type(split_string))