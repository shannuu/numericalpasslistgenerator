dir="$HOME/numericalpasslistgenerator"

source $dir/.update.sh

read -p $"[*] Enter the number of digits:- " digit
read -p $"[*] Enter the path:- " file
echo > $dir/higherlimit

a=0
while [[ $a != $digit ]]; do
    echo -n "9" >> $dir/higherlimit
    (( a++ ))
done

higherlimit=$(cat $dir/higherlimit)
hl=$(( higherlimit + 1 ))
source $dir/.generator.sh

rm $dir/higherlimit 2> /dev/null