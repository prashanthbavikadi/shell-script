#!/bin/bash
# Calculate the sum of two integers with pre initialize values
# in a shell script

# Initialize two variables with number
n1=$1
n2=$2

# Calculate sum
sum=$(( $1 + $2 ))

# Display the result
echo "Sum is: $sum"