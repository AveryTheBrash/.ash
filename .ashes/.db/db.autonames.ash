#!/bin/zsh

source $dbash

squig="~ ~ ~ ~ ~"

    #Header
top="    # Boxes Nouns"

    #Local Counter
e=0

writepath="$dbashs/db.names.ash"

    #Remove all entries
for i in `dbcatn | grep -w "export"`
do

        if [ $(($e%2)) = 0 ]
        then

            if [ $e -gt ${#boxdex[@]} ]
            then

            echo "Remove "$i
            sed -i "/export $i/d" $dbashs/db.names.ash 

            fi

        fi

    e=$((e + 1))

done

    #Local Counter
e=1

    # Auto Gen DistroNames
for i in ${boxdex[@]}
do

    if [ $(($e%2)) = 0 ];
    then
        
        bottom="export "$buffer"="$i

        sed -i "s@$top@$top\n$bottom@" $writepath

        echo "Adding $bottom"     

        top=$bottom
    
    else

        buffer=$i

    fi

    e=$((e + 1))

done
