#!/bin/bash

### 1. Function Definition & Call
my_function() {
  echo "my_function: Hello from function!"
}
my_function

echo "--------------------------"

### 2. Function with Arguments
greet() {
  echo "greet: Hello, $1! Welcome to $2."
}
greet "Sefat" "Bash Scripting"

echo "--------------------------"

### 3. Variable Scope (Local vs Global)
global_var="I am global"

scope_test() {
  local local_var="I am local"
  echo "scope_test (inside): $local_var"
  global_var="I am modified globally"
}
scope_test
echo "global_var (outside): $global_var"
echo "local_var (outside): $local_var"  # Will be empty or show nothing

echo "--------------------------"

### 4. Return Values: Using return (0-255 only)
add_small() {
  local sum=$(( $1 + $2 ))
  return $sum
}
add_small 10 20
echo "add_small return (10+20): $?"  # Only valid if <= 255

echo "--------------------------"

### 5. Return Large Values with echo
add_large() {
  echo $(( $1 + $2 ))
}
result=$(add_large 150 200)
echo "add_large result (150+200): $result"

echo "--------------------------"
echo "All function examples complete."
