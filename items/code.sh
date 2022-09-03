for item in `ls`

do

Filename=`echo $item | awk -F. '{ print $1 }'`
Extension=`echo $item | awk -F. '{ print $2 }'`

	mkdir -p ../backup/$Filename/$Extension
	mv $item ../backup/$Filename/$Extension


done