for item in `ls *.txt`

do

   	
	FileName=`echo $item | awk -F. '{print $1}'`
	mkdir $FileName
	cp -r $item $FileName

done