my_file = open("temp","r")
lines = my_file.read().split("\n")

print("time,x,y,z")
strout = ""
for l in lines:
    if l != "" and l[0] != '%':
        temp = list(filter(lambda a: a != '', l.split(" ")))
        strout += ","+str(temp[2])+","+str(temp[3])+","+str(temp[4])
        print(strout)
    elif l != "" and l[0] == '%' and l.split(" ")[1] == "time":
        strout = str(l.split(" ")[2])

my_file.close()

