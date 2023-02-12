#!/bin/bash

# Read user input
read -p "Enter a number to calculate all the primes up until: " number

# Iterate from 2 to `number`, testing along the way
for i in $(seq 2 $number); do
  isPrime=true
  for j in $(seq 2 $(expr $i - 1)); do
    if [[ $(expr $i % $j) -eq 0 ]]; then
      isPrime=false
      break
    fi
  done
  if [[ $isPrime == true ]]; then
    echo $i
  fi
done
