#!/bin/bash

# Only run this script if user is root.
# Throw error if UID is not 0
ROOT_UID=0
if [[ ${UID} -ne ${ROOT_UID} ]]
then
	echo "You don't have root permission, Run with 'sudo'."
	exit 1
fi

# Display user id and user name
#USER_ID=$(id -u)
USER_ID=$UID
echo "User id: $USER_ID"

# USER_NAME=$(id -un)
USER_NAME=$USER
echo "User name: $USER_NAME"

# Execute command and check its return status
pwd
status=${?}
echo "pwd return status: $status"
if [[ status -eq 0 ]]
then
	echo "command success"
else
	echo "command failed"
fi
