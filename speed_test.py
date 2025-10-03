import time
import sys

### This program tells you how fast your python script is running
### Give File name of your python program as first argument
### And number of tests as your second argument
### The higher the number, the higher the accuracy of the measurement, but the longer the test

if len(sys.argv) != 3:
    print("This program needs the program-name and the number of executions as its only two commands")
else:
    start = time.time()
    for i in range(int(sys.argv[2])):
        with open(sys.argv[1]) as file:
            exec(file.read())

    end = time.time()
    print("The average time to run this program once is: ", ((end - start)/int(sys.argv[2])), "seconds")
