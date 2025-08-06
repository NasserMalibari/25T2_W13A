#!/usr/bin/sh

# check command line args
if [ "$#" -ne 1 ]; then
    echo "usage: rmall.sh <directory>"
    exit 1
fi


dir="$1"
if [ ! -d "$dir" ]; then
    echo "expected directory"
    exit 1
fi

cd "$dir"

for file in *; do

    if [ -f "$file" ]; then
        echo -n "Delete $file: "
        read -r ans

        if [ "$ans" = "yes" ];
        then
            echo "rm $file"
        fi     

    fi

    if [ -d "$file" ]; then

        rmall.sh "$file"
    fi


done

# for arg in "$@" -> each arg 



