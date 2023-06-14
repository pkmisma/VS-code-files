#content = open("file.txt", "r+")

#reading = content.read()
#content.write("ismail")

#print(content.readline())
#f = content.read()
#content.close()
content1 =  open("file.txt", "a+")

content1.write("This is a new line\n")
content1.write("adding one more new line")

#print(content1.readlines())
content1.close()
content1 =  open("file.txt", "r")

set1 = set(content1.readlines())

print(set1)

