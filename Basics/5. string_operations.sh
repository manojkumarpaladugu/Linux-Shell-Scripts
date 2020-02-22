#!/bin/bash

# check if two strings are equal
string1='analyse'
string2='analyse'
if [[ $string1 = $string2 ]]
then
	echo 'both strings are equal'
fi

# check if two strings are not equal
if [[ $string1 != $string2 ]]
then
	echo 'both strings are not equal'
fi

# check if string is not empty
if [ -n $string1 ]
then
	echo "string1 is not empty"
fi

string3=''
# check if string is empty
if [ -z $string3 ]
then
	echo "string3 is empty"
fi
