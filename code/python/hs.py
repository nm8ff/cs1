n = 10
length = 0
while (n != 1):
    print (n)
    length = length + 1
    if (n % 2):
        n = (3 * n + 1)
    else:
        n = (n // 2)
print (n)
length = length + 1
print (length)
