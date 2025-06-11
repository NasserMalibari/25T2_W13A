# W2


## Housekeeping

- Week 1 AND Week 2 labs due **Week 3**
- Make sure you are able to access the course forum!!



## 1
Consider the following columnar (space-delimited) data file containing (fictional) contact for various CSE academic staff:
```
G Heiser       Newtown      9381-1234
S Jha          Kingsford    9621-1234
C Sammut       Randwick     9663-1234
R Buckland     Randwick     9663-9876
J A Shepherd   Botany       9665-4321
A Taylor       Glebe        9692-1234
M Pagnucco     North Ryde   9868-6789
```

The data is currently sorted in phone number order.
Can we use the sort filter to re-arrange the data into "telephone-book" order?
(alphabetically by last name)
If not, how would we need to change the file in order to achieve this? 


## 2
Consider this Unix password file
(usually found in /etc/passwd): 
```
root:ZHolHAHZw8As2:0:0:root:/root:/bin/dash
jas:iaiSHX49Jvs8.:100:100:John Shepherd:/home/jas:/bin/bash
andrewt:rX9KwSSPqkLyA:101:101:Andrew Taylor:/home/andrewt:/bin/cat
postgres::997:997:PostgreSQL Admin:/usr/local/pgsql:/bin/bash
oracle::999:998:Oracle Admin:/home/oracle:/bin/bash
cs2041:rX9KwSSPqkLyA:2041:2041:COMP2041 Material:/home/cs2041:/bin/bash
cs3311:mLRiCIvmtI9O2:3311:3311:COMP3311 Material:/home/cs3311:/bin/zsh
cs9311:fIVLdSXYoVFaI:9311:9311:COMP9311 Material:/home/cs9311:/bin/bash
cs9314:nTn.JwDgZE1Hs:9314:9314:COMP9314 Material:/home/cs9314:/bin/fish
cs9315:sOMXwkqmFbKlA:9315:9315:COMP9315 Material:/home/cs9315:/bin/bash
```
 Provide a command that would produce each of the following results:

a.    Display the first three lines of the file

b.    Display lines belonging to class accounts
    (assuming that class accounts have a username that starts with either "cs", "se", "bi" or "en", followed by four digit)

c.    Display the username of everyone whose shell is /bin/bash

d.    Create a tab-separated file passwords.txt containing only the username and password of each user


## 4

 What is the output of each of the following pipelines if the text: 

```
this is big Big BIG
but this is not so big
```

a.
```
tr -d ' ' | wc -w
```

b. 
```
tr -cs '[:alpha:]' '\n' | wc -l
```

c.
```
tr -cs '[:alpha:]' '\n' | tr '[:lower:]' '[:upper:]' | sort | uniq -c
```


## 6

 Consider a file containing tab-separated benchmarking results for 20 programs, in three different benchmarks, all measured in seconds. 

```
program1	08	03	05
program2	14	03	05
program3	17	08	10
program4	15	11	05
program5	16	10	24
program6	15	09	17
program7	15	06	10
program8	17	10	17
program9	12	07	08
program10	09	04	16
program11	11	03	24
program12	16	11	20
program13	16	08	17
program14	08	07	06
program15	06	06	05
program16	12	05	08
program17	09	05	10
program18	06	06	06
program19	14	09	22
program20	16	04	24
```


a. 

Write a sort command which sorts by the results in the second benchmark, then by the results in the first benchmark.

b.

Write a sort command which sorts by the results in the third benchmark, then by the program number.


c.

Write a sed command which removes the leading zeroes from the benchmark times.


d.

Write a sed command which removes the benchmark results from program2 through program13.


