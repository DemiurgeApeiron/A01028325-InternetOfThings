n = int(input("intput: "))
reversed = 0
while n != 0:
    r = int(n % 10)
    print(r)
    reversed = reversed * 10 + r
    print(reversed)
    n = int(n / 10)
    print(n)
print(reversed)
