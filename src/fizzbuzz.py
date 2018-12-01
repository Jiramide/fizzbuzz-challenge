## Coda, 11/31/2018

output = ""

for i in range(101): # technically to 100
    if i % 3 == 0:
        output = output + "fizz"
    if i % 5 == 0:
        output = output + "buzz"
    if output == "":
        output = output + str(i)

    print(output)

    output = ""
