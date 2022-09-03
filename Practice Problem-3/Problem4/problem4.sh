files=()
while IFS=  read -r -d $'\0'; do
    files+=("$REPLY")
done < <(find /var/log/ -mtime +7 -print0)
tar cvfz backup.tar.gz "${files[@]}"