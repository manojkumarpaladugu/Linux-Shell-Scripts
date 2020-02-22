# Display how many arguements are passed to this script
# Inside script they are parameters, outside they are arguements
NUMBER_PARAMETERS=${#}
echo "You have supplied ${NUMBER_PARAMETERS} parameters to this script"

if [[ ${NUMBER_PARAMETERS} -lt 1 ]]
then
	echo 'Usage: ${0} USER_NAME [USER_NAME] ...'
	exit 1
fi

# Display the command line arguement to this script.
echo "parameter 0: ${0}"

# Display the base name of the script.
echo "base name: $(basename ${0})"

# Generate and display password for each user.
# "${@}" expans positional paramers into each word. i.e "${0}" "${1}"
for USER_NAME in "${@}"
do
	PASSWORD=$(date +%s%N | sha256sum | head -c 8)
	echo "Username: $USER_NAME, Password: $PASSWORD"
done
