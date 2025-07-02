#!/usr/bin/dash


# print first and last line
top_and_bottom () {
    filename="$1"

    # check filename exists
    if [ ! -f "$filename" ]; then
        echo "$filename not found" >&2 
        exit 1
    fi

    echo "$filename"
    echo "============"
    head -n 1 "$filename"
    tail -n 1 "$filename"

    # sed -n '1p;$p'
}

top_and_bottom "$1"