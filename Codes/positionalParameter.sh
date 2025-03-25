!#/bin/bash
#add two numbers using CLA
#command looks like this - ./filename.sh 20 30
sum = $(( $1 + $2 ))
echo "Sum = $sum"
