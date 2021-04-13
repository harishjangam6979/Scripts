#!/usr/bin/env sh

n=$1  # Input to print number of first 'n' prime numbers
a=0   # First Number of the Fibonacci Series
b=1   # Second Number of the Fibonacci Series

echo "The Fibonacci series is : "

for (( i=0; i<n; i++ ))
do
    echo "$a "
    fns=$((a + b))
    a=$b
    b=$fns
done





