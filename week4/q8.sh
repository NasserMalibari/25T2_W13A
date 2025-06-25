#!/usr/bin/dash


./q6.sh | head -14 |
while read zid; do

    ./q7.sh "$zid"
done | 
sort |
uniq -c 
