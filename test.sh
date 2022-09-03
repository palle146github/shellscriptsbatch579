for item in `ls *.java`
do

Filename=`echo $item | awk -F. '{print $1}'`
mkdir $Filename
cp -r $item $Filename



done
