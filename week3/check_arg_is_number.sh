#!/usr/bin/sh

# this program checks if the first argument is an integer!

if [ $# -ne 1 ]
then
    echo "wrong num of args! Pls only 1 arg" >&2
    exit 1
fi

if [ "$1" -eq "$1" ] 2> /dev/null; then
    echo "is an integer"
    exit 0
else
    echo "not an integer" >& 2
    exit 1
fi


# alternative way using grep
if echo "$1" | grep -E -q -v '^[0-9]+'; then
    echo "not an integer"
fi
