num = [5,10,12,17,18,2,78,98,854]

divedevytwo = list(filter(lambda x:(x % 2 == 0), num ))
print(divedevytwo)

only = list(filter(lambda x:(x == 5), num ))
print(only)