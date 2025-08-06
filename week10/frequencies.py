#!/usr/bin/python3

import sys
import collections

def main():

    count = {}
    for line in sys.stdin:
        # print(line)
        line = line[:-1]
        for char in line:
            if char.isalnum():
                # check char is in dict
                count[char] = count.get(char, 0) + 1

    for key, value in sorted(count.items()):
        print(f"{key} {value}")

    # count = collections.Counter()
    # for ...
    #       count[char] += 1

if __name__ == "__main__":
    main()
    pass