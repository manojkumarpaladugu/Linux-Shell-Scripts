#!/bin/bash

# display the UID and username of the user executing the script
USER_ID=$UID
#USER_ID=$(id -u)
echo "UID: $USER_ID"

USER_NAME=$USER
#USER_NAME=$(id -un)
echo "Username: ${USER_NAME}"

# check if user is root or not
printf 'Is root: '
if [[ "${UID}" == 0 ]]
then
	echo 'Yes'
else
	echo 'No'
fi
