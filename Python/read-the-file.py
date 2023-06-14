file_content = open("sample.txt")

#print(file_content)

c = file_content.read()

#print(c)

file_content.close()

server_file = open("server.txt", "r")

content =  server_file.readlines()
#print(content)
#print(type(content))

#for i in content:
 #if i.replace("\n", "") == "server-1":
  #print(i)

filedata = open("server.txt","r")
#line1 = filedata.readlines()    
#print(line1)

line2 = filedata.readline()    
print(line2,end="")
line3 = filedata.readline()    
print(line3,end="")
filedata.close()