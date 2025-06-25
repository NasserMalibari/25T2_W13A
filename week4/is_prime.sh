#!/usr/bin/dash

# TODO: check args

# TODO: add -q

num="$1"

i=2
while [ $(( i * i )) -lt "$num" ]; do
    # check divisor
    
    # if command

    if [ $(( num % i )) -eq 0 ]; then
        echo "$num is not prime" 1>&2 
        exit 1
    fi

    i=$(( i + 1))
done

echo "$num is prime"
exit 0

# for i in $(seq )