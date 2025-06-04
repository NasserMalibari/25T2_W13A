# 25T2_M17A


# Q6

Write a regex to match: 

### 
- C preprocessor commands in a C program source file. 

### 

- All the lines in a C program except preprocessor commands. 
### 
- All lines in a C program with trailing white space (one or more white space at the end of line). 

### 
- The names "Barry", "Harry", "Larry" and "Parry". 

### 
-  A string containing the word "hello" followed, some time later, by the word "world". 

### 
- The word "calendar" and mis-spellings where 'a' is replaced with 'e' or vice-versa. 

### 
- A list of non-negative integers separated by commas, e.g. 2,4,8,16,32 

###
-  A C string whose last character is newline. 

# Q7
 When should you use: 

- `fgrep/grep -F`

- `grep/grep -G`

- `egrep/grep -E`

- `pgrep/grep -P`

# Q8

`man 1 grep`

Give 3 or more useful options and explain what they do

# Q9
Why does the following command seem to take a while to run?

`grep -E hello`

# Q10
 Why won't this command work: 
 `grep -E int main program.c`

 # Q11
  Give five reasons why this attempt to search a file for HTML paragraph and break tags may fail. 
  `grep <p>|<br> /tmp/index.html`

# Q12
 For each of the regular expression below indicate how many different strings the pattern matches and give some example of the strings it matches.
If possible these example should include the shortest string and the longest string. 
- `Perl`
- `Pe*r*l`
- `Full-stop.`
- `[1-9][0-9][0-9][0-9]`
- `I (love|hate) programming in (Perl|Python) and (Java|C)`

# Q13


This regular expression `[0-9]*.[0-9]*` is intended to match floating point numbers such as '42.5'

Is it appropriate?

# Q14
 What does the command `grep -Ev .` print and why? 


# Q15


Write a grep -E command which will print any lines in a file ips.txt containing an IP addresses in the range 129.94.172.1 to 129.94.172.25

# Q16
 For each of the scenarios below, give a regular expression to match this class of strings 

 -  encrypted password fields (including the surrounding colons) in a Unix password file entry

 -  positive real numbers at the start of a line (using normal fixed-point notation for reals, not the kind of scientific notation you find in programming languages),

 -  Names as represented in this file containing details of tute/lab enrolments: 

 - Names as above, but without the trailing spaces (difficult).
Hint: what are given names composed of, and how many of these things can there be?



