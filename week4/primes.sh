#!/usr/bin/dash


num="$1"
i=1

while [ "$i" -lt "$num" ]; do
    # check i is prime
    if ./is_prime.sh "$i" > /dev/null 2>&1; then
        echo "$i"
    fi
    # ./is_prime.sh "$i"


    i=$(( i + 1))
done