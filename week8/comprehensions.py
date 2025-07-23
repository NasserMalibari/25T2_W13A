#!/usr/bin/env python3

# map
my_list = [1, 3, 6, 10]
new_list = []
for num in my_list:
    new_list.append(num ** 2)

print(new_list)
# [operation(x) for x in iterable]
new_list = [num ** 2 for num in my_list]
print(new_list)

# loop in sorted order
# for num in reversed(sorted(new_list)):
    # print(num)

new_list = []
for num in my_list:
    if num % 2 == 0:
        new_list.append(num)
new_list = [num for num in my_list if not num % 2]
print(new_list)


# STRINGS


# split 
input = "Hello world foo bar baz"
input2 = "Hello,world,foo,bar,baz"


# join



