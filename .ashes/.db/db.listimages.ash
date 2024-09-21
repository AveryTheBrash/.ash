#!/bin/zsh

source $dbash

    #Arrary of Terminal Options.
gte=(${imgind[@]})

    #Loop counter
e=2
    #Entry Number
g=1

    #Splashscreen.
echo "\nList Images"

    #Format List of Aliases and Distrobox Images,
    #into a cumulative array
for i in ${gte[@]} 
do

        #First alias 1
    if [ $((e%2)) = 0 ];
    then

        ia=$i
        e=1

        #Second entrynum + alias 1 + name 1 
    else

        ic+=("$g $ia ~ \$"$i)
        e=2
        g=$((g + 1))

    fi

done

    #Display List
for i in ${ic[@]}
do

    echo $i

done



