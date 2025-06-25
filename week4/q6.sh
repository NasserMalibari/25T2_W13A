#!/usr/bin/dash


mlalias cs2041.wed13-strings |
sed -n '/Addresses/,/Owners/p' |
head  -n -1 | tail -n +2 | 
grep -E '^\s*z[0-9]{7}' |
cut -d'@' -f1 | tr -d ' '
