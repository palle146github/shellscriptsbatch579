
read -p "Enter a String:" string
for ch in {a..z}; 
do
    count=${string//[^$ch]/}

    echo "The letter ${ch} occurs ${#count} times"
done