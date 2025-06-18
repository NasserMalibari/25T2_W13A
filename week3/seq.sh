#!/usr/bin/sh


# check number

# TODO: ARG CHECKING

LAST="$1"
INC=1
START=1

if test "$#" -eq 2; then
    START="$1"
    LAST="$2"
elif test "$#" -eq 3; then
    START="$1"
    INC="$2"
    LAST="$3"
fi


CURR="$START"

# while curr <= last
#     print curr
#     curr += 1
while test "$CURR" -le "$LAST"; do

    echo "$CURR"
    CURR=$(( CURR + INC ))

done
