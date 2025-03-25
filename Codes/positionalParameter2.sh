#!/bin/bash
#command looks like - ./args.sh apple banana cherry
echo "Script Name: $0"
echo "First Argument: $1"
echo "Second Argument: $2"
echo "Third Argument: $3"
echo "Total Arguments: $#"
echo "All Arguments (Using *): $*"
echo "All Arguments (Using @): $@"
