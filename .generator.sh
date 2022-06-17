wcH=$(echo $higherlimit | wc -c)
for (( i=0; i<$hl; i++ )); do
    echo > $dir/less.txt
    wcc=$(echo $i | wc -c)
    les=$(( wcH - wcc ))
    
    if [[ $les != 0 ]]; then
        c=0
        while [[ $c != $les ]]; do
            echo -n "0" >> $dir/less.txt
            (( c++ )) 
        done
        less=$(cat $dir/less.txt)
    elif [[ $les == 0 ]]; then
        less=""
    fi
    no="$less$i"
    echo $no >> $file
done
rm $dir/less.txt 2> /dev/null