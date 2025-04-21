#!/bin/bash
# ==========================================
# Bash Loop Demonstration Script
# ------------------------------------------
# This script shows examples of:
# - for loop (numeric range, array, command output)
# - while loop
# - until loop
# - break and continue statements
#
#  How to Run:
# 1. Save this file as 'loop_demo.sh'
# 2. Make it executable: chmod +x loop_demo.sh
# 3. Run it: ./loop_demo.sh
# ==========================================

echo "------ FOR LOOP (1 to 5) ------"
for i in {1..5}; do
  echo "Number: $i"
done

echo
echo "------ FOR LOOP (ARRAY) ------"
fruits=("apple" "banana" "mango")
for fruit in "${fruits[@]}"; do
  echo "Fruit: $fruit"
done

echo
echo "------ WHILE LOOP (1 to 5) ------"
count=1
while [ $count -le 5 ]; do
  echo "Count: $count"
  ((count++))
done

echo
echo "------ UNTIL LOOP (1 to 5) ------"
num=1
until [ $num -gt 5 ]; do
  echo "Num: $num"
  ((num++))
done

echo
echo "------ LOOP WITH BREAK ------"
for i in {1..10}; do
  if [ $i -eq 4 ]; then
    echo "Breaking at $i"
    break
  fi
  echo "i = $i"
done

echo
echo "------ LOOP WITH CONTINUE ------"
for i in {1..5}; do
  if [ $i -eq 3 ]; then
    echo "Skipping $i"
    continue
  fi
  echo "i = $i"
done

echo
echo "------ FOR LOOP (COMMAND OUTPUT) ------"
for file in $(ls *.sh 2>/dev/null); do
  echo "Found script file: $file"
done

