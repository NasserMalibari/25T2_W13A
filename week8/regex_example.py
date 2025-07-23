import re

# re.search
match_obj = re.search(r'[hH]+', "hhHello world")

if re.search(r'[hH]+', "hhHello world"):
    print('found hs')

# get indexes of original string where match occured
# >> (0,3)
print(match_obj.span())

# get matched part
# >> "hhH"
print(match_obj.group(0))

# get the string we searched
# >> "hhHello world"
print(match_obj.string)


# alternatively use flags
match_obj = re.search(r'h+', "hhHello world", flags=re.I)



# re.findall()

# find all sequences of capital letters
all_matches = re.findall(r"[A-Z]+", "AAABBC some ZZZ capitals123 BCD")

# print(len(all_matches))
# >> 3

print(all_matches)
# >> ['AAABBC', 'ZZZ', 'BCD']

# re.sub

# replace all sequnces of numbers with a '?'
new_string = re.sub(r"[0-9]+", '?', "i have 123 sets of 10")
print(new_string)
# >> 'i have ? sets of ?'


#####

# other functions

###

# re.match
# like re.search but only matches from start of string (like adding a ^)

# re.fullmatch
# like search but matches only whole strings (like '^pattern$')

