#!/bin/bash

# This script generates list of random passwords

# a random number as password
echo '1. Generate random number as password'
PASSWORD=$RANDOM
echo $PASSWORD

# generate a random password based on current time (seconds elapsed since 1970-01-01) as password
echo '2. Generate random password based on current time (seconds elapsed since 1970-01-01)'
PASSWORD=$(date +%s)
echo $PASSWORD
# This method is easy for hackers to retrieve the password. Because, if hacker knows on what day you changed the password, then there are 86400 seconds in a day.
# So, there are only 86400 possible numbers he could to get into your system.

# generate secure random password based on current time and nano seconds.
# combination of seconds and nano seconds makes it difficult ot guess.
echo '3. Generate secure random password based on seconds + nano seconds'
PASSWORD=$(date +%s%N)
echo $PASSWORD

# generate more secure random password based on combination of time and checksum algorithms
echo '4. Generate more secure random password based on combination of time and checksum algorithm'
PASSWORD=$(date +%s%N | sha256sum | head -c 8)
echo $PASSWORD

# Add special character to the password
echo '5. Add special character to the password'
SPECIAL_CHARACTERS='`~!@#$%^&*()-_=+'
SPECIAL_CHARACTER==$(echo $SPECIAL_CHARACTERS | fold -w 1 | shuf | head -c 1)
echo ${PASSWORD}${SPECIAL_CHARACTER}
