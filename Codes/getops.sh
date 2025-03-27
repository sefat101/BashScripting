#!/bin/bash
#getopts allows scripts to handle flags (-a, -b, etc.) and named parameters
#./script.sh -n Alice -a 25


while getopts "n:a:" opt; do
  case $opt in
    n) name=$OPTARG ;;
    a) age=$OPTARG ;;
    *) echo "Invalid option"; exit 1 ;;
  esac
done

echo "Name: $name"
echo "Age: $age"
