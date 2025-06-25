# 1
A COMP2041 student wrote this script, named start_lab04.sh, to run before the Week 4 lab. 

```$ cat start_lab04.sh```

```
#! /bin/dash

cd ~/labs/04

ex1=jpg2png
ex2=email_image
ex3=date_image
ex4=tag_music
```

But when he ran his script, it didn't seem to work: 
```
$ pwd
/home/z1234567
$ ./start_lab04.sh
$ pwd
/home/z1234567
$ echo $ex1 $ex2 $ex3 $ex4
```

Why not? How can the script be fixed? 


# 2
Write a shell script, is_business_hours which exits with a status of 0 if the current time is between 9am - 5pm, and otherwise exits with a status of 1. 

### Notes
- we can use the `date` command which would output something like:
```
$ date
Mon 10 Mar 2025 23:25:16 AEDT
```
- We can probably use something better than `cut` however, we should try `man date` to see if there is 
a useful option (like how we use options with `wc`)

# 3
 COMP2041 student Shruti has a 'friends' subdirectory in her home directory that contains images of her many friends.
Shruti likes to view these images often and would like to have them appear in other directories within her CSE account so she has written a shell script to symlink them to the current directory:

```
for image_file in $(ls ~/friends); do
    ln -s "~/friends/$image_file" .
done
```

The links created by Shruti's script are broken.

Why? How can she fix her script? 

### Notes
- Does ~ work inside double quotes?
- Is there a better way than using `ls`

# 4
 The course code for COMP2041 has been changed to COMP2042 and the course code for COMP9044 has been changed to COMP9042.

Write a shell script, `update_course_code.sh` which appropriately changes the course code in all the files it is given as arguments. 

### Notes
- We need to loop through command line args
- Update the contents of each file (which filter tool?)
- Which tool do we use to create a temporary file to store the new file contents?
- We should probably check each argument is a valid file: which `test` argument should we use?

# 5
 Modify `update_course_code.sh` so if given a directory as an argument it updates the course codes in files found in that directory and its sub-directories. 


### Notes   
- See Q4 for main logic, this time we need to check args are valid directories however

# 6
 CSE systems have a command, mlalias, which prints information about a specified mail alias.
For example: 
```
mlalias cs2041.24T2.tutors
          Alias: cs2041.24T1.tutors
    Description: 24T1 COMP2041 tutors
          Flags: personal, public, unprivileged, members_can_post, closed
      Addresses:
                 z5364339
                 z5362057
                 z5358476
                 z5416950
                 z5115658
                 ...
                 z5208931
                 z5483411
                 andrewt
         Owners: cs2041
        Senders: @COMP2041_Lecturer, @COMP2041_Supervisor, @Employee
```
 Convert the output of the mlalias command into a new line separated list of UNSW zIDs,
like this: 

### Notes
- We need to pick out the student id lines, then filter a bit more
- What does a student id look like? Could looking for lines starting with `z` be problematic? Perhaps we need to be more general.

# 7
CSE system have a command, acc, which prints information about a specified user.
For example:
```
$ acc z5417087
           User Name : z5417087            Aliases : xavc
                 Uid : 3731                    Gid : 3731
             Expires : 16mar2025

              Groups : cs1521[23sep2024], classadmin[16jun2025]
       Group classes : classadmin[16jun2025]
        User classes : 3779_Student, COMP1521_Supervisor[23sep2024]
                     : COMP4961t2_Student[06oct2024]
                     : COMP6453t2_Student[23sep2024]
        Misc classes :

                Name : Mr Cooney, Xavier (Xavier Cooney)
            Position : Casual Academic (Sch: Computer Science & Eng)
         UNSW Number : 5417087
           UNSW Mail : x.cooney@unsw.edu.au
           UNSW Home : //INFPWFS219.ad.unsw.edu.au/Student037$/z5417087
            CSE Home : /import/reed/5/z5417087
``` 
Write a pipeline which converts the output of acc into a new line separated list of courses the person is enrolled as a student in,
like this:
```
COMP4961
COMP6453
```

### Notes
- Probably a task for our filter tools, however sometimes classes appear on the same line. Can we change this?

# 8
 Use the pipeines from the above 2 questions to write a shell script which print a list of courses taken by COMP2041 tutors with counts of how many COMP2041 tutors take each,
like this:

```
7 COMP6771
6 COMP3900
6 COMP3331
5 COMP3311
5 COMP3121
...
```

# 9 
 Write a shell script named is_prime.sh which given an integer as an argument, tests whether it is prime and prints a suitable message: 

```
$ is_prime.sh 42
42 is not prime
$ is_prime.sh 113
113 is prime
```
Your script should exit with a non-zero exit status if its argument is not prime.

Write a second script named primes.sh which uses the first script to print all primes less than a specified value, e.g: 
```
$ primes.sh 100
2
3
5
7
...
```

- `is_prime` is a classic programming problem
- How can we leverage the exit code `is_prime.sh` in `primes.sh` ?

# 11
 The shell variable $PATH contains a colon-separated list of directories. which will be searched when executing a command.

Write a shell script named which.sh which given a program name as argument, uses to ls to print details of matching files in directories in $PATH

For example: 
```
./which.sh clang
llrwxrwxrwx 1 root root 24 Jan 12 01:49 /usr/bin/clang -> ../lib/llvm-11/bin/clang
./which.sh lost
lost not found
```
Don't try using which. Use the usual programs we've been using to write scripts such as tr and test.
Think about if any characters in directory names migh break your answer, e.g spaces. 

### Notes
- How do we look at each of the $PATH path's seperately? 
- For each individual path, we can check if a file of the correct name exists and executable.
- Will your solution break if there is whitespace in the argument?
