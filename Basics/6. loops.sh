#!/bin/bash

# demo on for loop
echo '1. Demp on for loop'
for word in "Hello" "I am new to shell scripting" "It is more fun"
do
	echo $word
done

# print values from 1 to 10
echo '2. Demo on while loop'
echo 'Generating random numbers with delay of 1 sec'
x=1
while [[ ${x} -le 10 ]]
do
	echo $RANDOM
	x=${x}+1
done
