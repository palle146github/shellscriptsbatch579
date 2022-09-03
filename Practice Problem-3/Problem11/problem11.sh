read -p "Enter a value" usersecret

if [[ -z "${usersecret}" ]]; then
  MY_SCRIPT_VARIABLE="dH34xJaa23"
	
else
  MY_SCRIPT_VARIABLE="${usersecret}"
fi

echo $MY_SCRIPT_VARIABLE