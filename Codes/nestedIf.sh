#!/bin/bash

echo -n "Enter a number: "
read num

if [ $num -gt 0 ]; then
    echo "The number is positive."
    
    if [ $((num % 2)) -eq 0 ]; then
        echo "It is also even."
    else
        echo "But it is odd."
    fi

else
    echo "The number is not positive."
fi
