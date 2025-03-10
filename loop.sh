#!/bin/bash

# Check if two arguments are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <start_point> <end_point>"
    exit 1
fi

start=$1
end=$2

# Check if start is less than or equal to end
if [ "$start" -le "$end" ]; then
    for (( num=start; num<=end; num++ ))
    do
        echo "$num"
        echo "hello"
    done
else
    for (( num=start; num>=end; num-- ))
    do
        echo "$num"
        echo "hello"
    done
fi

