#!/bin/bash

# ==========================================
# Bash Array Demonstration Script
# ------------------------------------------
# This script covers:
# 1. Declaring arrays
# 2. Accessing elements
# 3. Adding/updating elements
# 4. Removing elements
# 5. Array length
# 6. Looping through arrays
# 7. Associative arrays (key-value pairs)
#
# How to Run:
# 1. Save this file as 'array_demo.sh'
# 2. Make it executable: chmod +x array_demo.sh
# 3. Run it: ./array_demo.sh
# ==========================================

echo "====== Indexed Arrays ======"

# 1. Declare an array
fruits=("apple" "banana" "mango")

# 2. Access elements
echo "First fruit: ${fruits[0]}"
echo "Second fruit: ${fruits[1]}"

# 3. Add/update element
fruits[3]="orange"
fruits[1]="grape"  # Update index 1
echo "Updated array: ${fruits[@]}"

# 4. Array length
echo "Total fruits: ${#fruits[@]}"

# 5. Loop through array
echo "Looping through fruits:"
for fruit in "${fruits[@]}"; do
  echo "- $fruit"
done

# 6. Remove an element
unset fruits[2]
echo "After removing index 2: ${fruits[@]}"

# 7. Indices of array
echo "Indices: ${!fruits[@]}"

echo
echo "====== Associative Arrays ======"

# Declare an associative array
declare -A capitals
capitals["Bangladesh"]="Dhaka"
capitals["India"]="Delhi"
capitals["Japan"]="Tokyo"

# Access a value
echo "Capital of India: ${capitals["India"]}"

# Loop through associative array
echo "All countries and capitals:"
for country in "${!capitals[@]}"; do
  echo "$country → ${capitals[$country]}"
done

# Length of associative array
echo "Total entries: ${#capitals[@]}"

# Update and delete
capitals["Japan"]="Kyoto"
unset capitals["India"]
echo "Updated Capitals:"
for country in "${!capitals[@]}"; do
  echo "$country → ${capitals[$country]}"
done
