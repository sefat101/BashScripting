#!/bin/bash

# == Equal
a=5
b=5
if [ $a -eq $b ]; then
  echo "a is equal to b (-eq)"
fi

# != Not Equal
b=6
if [ $a -ne $b ]; then
  echo "a is not equal to b (-ne)"
fi

# -lt Less Than
if [ $a -lt $b ]; then
  echo "a is less than b (-lt)"
fi

# -le Less Than or Equal
b=5
if [ $a -le $b ]; then
  echo "a is less than or equal to b (-le)"
fi

# -gt Greater Than
a=7
if [ $a -gt $b ]; then
  echo "a is greater than b (-gt)"
fi

# -ge Greater Than or Equal
if [ $a -ge $b ]; then
  echo "a is greater than or equal to b (-ge)"
fi

# String comparisons
str1="hello"
str2="world"

# = Equal
if [ "$str1" = "hello" ]; then
  echo "String is hello (=)"
fi

# != Not equal
if [ "$str1" != "$str2" ]; then
  echo "Strings are not equal (!=)"
fi

# -z Empty string
empty=""
if [ -z "$empty" ]; then
  echo "String is empty (-z)"
fi

# -n Not empty
if [ -n "$str1" ]; then
  echo "String is not empty (-n)"
fi
