DIR="Problem9"
if [ ! -d "$DIR" ]; 
then
	echo "Error:  not found folder with name ${DIR}. Creating one"
	mkdir $DIR  


else
	echo "$DIR already Exists"
fi