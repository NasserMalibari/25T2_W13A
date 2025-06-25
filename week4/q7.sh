#!/usr/bin/dash

#TODO: check valid zid as cmnd line arg

if echo "$1" | grep -E -q -v '^z[0-9]{7}$'; then
    echo "invalid zid"
    exit 1
fi

zid="$1"

acc "$zid" | 
sed -E -n '/User classes/,/Misc classes/p' | 
tr ',' '\n' |
grep -E -o '[A-Z]{4}[0-9]{4}t2_Student' | 
cut -c'1-8'