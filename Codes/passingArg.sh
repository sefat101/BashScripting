#!/bin/bash
#this code is checking if the argument is passed or not
if [ $# -eq 0 ]; then
    echo "No arguments provided."
    exit 1
fi

echo "Arguments received: $@"
