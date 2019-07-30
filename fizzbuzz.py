for i in range(1, 100):
    if i % 3 is 0 and i % 5 is 0:
        print("Fizz Buzz!")
    elif i % 3 is 0:
        print("Fizz!")
    elif i % 5 is 0:
        print("Buzz!")
    else:
        print(i)
