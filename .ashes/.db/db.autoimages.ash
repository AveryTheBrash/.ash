#!/bin/zsh

source $dbash

squig="~ ~ ~ ~ ~"

    #Header
top="    # Export DistroImages"

    #Local Counter
e=1

writepath="$dbashs/db.images.ash"

    # Auto Gen DistroImages
for i in ${imgind[@]}
do

    if [ $((e%2)) = 0 ];
    then
        
        bottom="export "$buffer"="$i
        conflict=`dbli | grep -w $bottom`
        destroy=neutral

        if [ $bottom = $conflict ];
        then

            echo "Old: $conflict"
            echo "New: $bottom\n"$squig
            echo "type 'yes' to replace the new with the old, and any other key to ignore."
            read destroy

            if [ 'yes' != $destroy ];
            then

                destroy=no

            elif [ 'yes' = $destroy ];
            then

                echo "\n"$squig" Replacing... "$squig"\n"

            fi
        fi
        
        if [ 'no' = $destroy ];
        then

            echo "\n"$squig" Skipping... "$squig"\n"


        elif [ 'yes' != $destroy ];
        then

            sed -i "s@$top@$top\n$bottom@" $writepath

        elif [ 'yes' = $destroy ];
        then

            sed -i "s@$conflict@$bottom@" $writepath

        fi

        top=$bottom

    else

        buffer=$i

    fi

    e=$((e + 1))

done

