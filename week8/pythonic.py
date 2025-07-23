#!/usr/bin/env python3

# import ...

# Looping over a collection 

colors = ['red', 'green', 'blue', 'yellow']


# ####################


# Looping backwards

colors = ['red', 'green', 'blue', 'yellow']



#######################
# looping over indices and items

colors = ['red', 'green', 'blue', 'yellow']

# unpacking sequences

# for index, color in enumerate(colors, start=1):
#     print(f"{index} --> {color}")

names = ['raymond', 'rachel', 'matthew']
colors = ['red', 'green', 'blue', 'yellow']

# n = min(len(names), len(colors))
# for i in range(n):
#     print (names[i], '--->', colors[i])


colors = ['red', 'green', 'blue', 'yellow']

# # Forward sorted order


# # Backwards sorted order


# # Multiple exit points in a loop
def find(seq, target):
    for i, value in enumerate(seq):
        if value == target:
            break
    else:
        return -1
    return i

    # found = False
    # for i, value in enumerate(seq):
    #     if value == target:
    #         found = True
    #         break
    # if not found:
    #     return -1
    # return i

# list1 = [1, 3, 5]
# target = 3
# print(find(list1, target))



# ###### DICTIONARIES ##############################

d = {'a': 1, 'b': 2, 'c': 3}


# # construct from pairs
names = ['raymond', 'rachel', 'matthew']
colors = ['red', 'green', 'blue']


# # COUNTING WITH DICTIONARIES

my_list = ['a', 'b', 'c', 'a', 'c', 'a']
# {'a': 3, 'b': 1, 'c': 2}

# for i in range(len(my_list)):
    # 0 , 1, 2
    # my_list[i]

my_count = {}
for elem in my_list:
    # if elem in my_count:
    #     my_count[elem] += 1
    # else:
    #     my_count[elem] = 1

    my_count[elem] = my_count.get(elem, 0) + 1

# print_dict ##################
def print_dict(dict):

    # for key in dict:
    #     # print(elem)
    #     print(f"[{key}] => {dict[key]}")
    # pass
    for key, value in dict.items():
        pass
        # key = item[0]
        # value = item[1]
        # print(item)
        # print(f"[{item[0]}] => {item[1]}")
        print(f"[{key}] => {value}")

print_dict(my_count)
# print(my_count)
# # 
# import collections
# my_count = collections.Counter(my_list)
# print(my_count)

def f1():

    return collections.namedtuple(time_taken=1, result="hello world")

