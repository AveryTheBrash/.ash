#!/bin/zsh

    #Libraries.
source $dbash

    #Array of Shells.
shells=("zsh" "bash")

    #Arrary of Distrobox Terminals.
gte=(${boxdex[@]})

dbln

    #Splashscreen
echo "\nChoose and Type Which Number You Want"

    #Pick the number of the desired distrobox
read choose

    #Loop counter
e=1

    #For all distrobox aliases and names
for i in ${gte[@]} 
do

        #If your chosen number is equal to this cycle
    if [ $choose = $e ];
    then

           #Enter the distrbox of that name 
        dbe ${gte[$(($e * 2))]}
        exit

    else

        e=$((e + 1))

    fi

done
