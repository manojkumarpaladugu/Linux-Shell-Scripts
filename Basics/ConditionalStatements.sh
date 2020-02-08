#!/bin/bash

a=10
b=20

# if statement
if [ $a -eq $b ]
then
	echo 'first statement'
	echo 'second statement'
fi

if [ $a -ne $b ]
then
	echo 'a is not equal to b'
fi

# if else statement
if [ $a = $b ]
then
	echo 'a is equal to b'
else
	echo 'a is not equal to b'
fi

# if elif else statement
day=3
if [ $day = 1 ]
then
	echo 'Sunday'
elif [ $day = 2 ]
then
	echo 'Monday'
elif [ $day = 3 ]
then
	echo 'Tuesday'
elif [ $day = 4 ]
then
	echo 'Wednesday'
elif [ $day = 5 ]
then
	echo 'Thursday'
elif [ $day = 6 ]
then
	echo 'Friday'
elif [ $day = 7 ]
then
	echo 'Saturday'
fi

#case statement
var='a'

case $var in
	'a') echo 'apple';;
	'b') echo 'bat';;
	'c') echo 'car';;
	'd') echo 'dark';;
esac
