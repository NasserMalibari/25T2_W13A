#!/usr/bin/dash

# TODO: docs
print_message () {

    # if [ "$#" -ne 2 -a "$#" -ne 1 ]; then
    if [ "$#" -ne 2 ] && [ "$#" -ne 1 ]; then
        echo "usage: $0 <error_message> [exit status]"
        exit 1
    fi

    if [ "$#" -eq 1 ]; then
        echo "WARNING: $1"
    fi

    if [ "$#" -eq 2 ]; then
        echo "ERROR: $1" >&2 
        # TODO: check that $2 is a number
        exit "$2"
    fi

}

print_message "this a warning"
print_message "this a error" 42