#!/usr/bin/dash

#TODO: check args

for file in "$@"; do
    if [ ! -f "$file"  ]; then
        echo "skipping $file"
        continue
    fi

    sed -E -i 's/COMP2041/COMP2042/g; s/COMP9044/COMP9042/g' "$file"
    # mv cp

    # echo "file is $file"
done

