
for item in `ls`
do

Filename=`echo $item | awk -F. '{ print $1 }'`
Extension=`echo $item | awk -F. '{ print $2 }'`
if [ $Extension == "pdf" ] | [ $Extension == "mp4" ] | [ $Extension == "docx" ]
then 
	mkdir -p ../backup/$Filename/$Extension
	mv $item ../backup/$Filename/$Extension
fi
done