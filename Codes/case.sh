#!/bin/bash

echo "Choose an option:"
echo "1. Show date"
echo "2. List files"
echo "3. Show current directory"
echo "4. Exit"

read -p "Enter your choice [1-4]: " choice

case $choice in
    1)
        echo "Today's date is: $(date)"
        ;;
    2)
        echo "Files in the current directory:"
        ls
        ;;
    3)
        echo "You are in: $(pwd)"
        ;;
    4)
        echo "Goodbye!"
        exit 0
        ;;
    *)
        echo "Invalid option. Please enter a number from 1 to 4."
        ;;
esac
