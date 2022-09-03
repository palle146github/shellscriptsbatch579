for item in `ls *.log.1`
do

	
	FileName=`echo $item | awk -F. '{print $1}'`
	echo $FileName-"`date +"%d%m%Y"`".log

done