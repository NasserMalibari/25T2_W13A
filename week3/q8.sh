#!/usr/bin/sh

for file in *.c; do
    # echo "file is $file"
    echo "$file includes:"
    grep -E '^#include' "$file" |
    sed -E 's/^#include\s*[<"]/\t/' |
    sed -E 's/[>"]\s*$//'
done