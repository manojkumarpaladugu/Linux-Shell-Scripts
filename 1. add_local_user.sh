#!/bin/bash

# This script is used to create/delete standard acount on the local system.

ROOT_UID=0
if [[ $UID -ne ROOT_UID ]]
then
	echo 'Permission denied. Run with 'sudo''
	exit 1
fi

echo '1. Create Account'
echo '2. Delete Account'
read -p 'Enter choice: ' choice

case $choice in
	1)
		# Get the real name
		read -p 'Enter the real name: ' COMMENT

		# Get the user name
		read -p 'Enter the user name: ' USER_NAME

		# Get the password
		read -p 'Enter the password: ' PASSWORD

		# Create the user
		useradd -c "$COMMENT" -m $USER_NAME

		# Set the password
		echo -e "$PASSWORD\n$PASSWORD" | passwd $USER_NAME

		# Force password change on first login
		passwd -e $USER_NAME
		;;
	2)	
		# Get the user name
		read -p 'Enter the user name: ' USER_NAME
		# Delete the user
		userdel -f -r $USER_NAME
		;;
esac
