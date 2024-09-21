#!/bin/zsh

    #Libraries.
source $dbash

    #Array of Shells.
shells=("zsh" "bash")

    #Arrary of Distrobox Terminals.
gte=(${boxdex[@]})

    #Column Separator
tabsep="                 "

    #Decimal displacement
f="  "

    #Loop counter
e=0
    #Entry Number
g=1

    #Splashscreen.
echo "List of Distroboxes and their aliases"

    #Format List of Aliases and Distroboxes,
    #into a cumulative array
for i in ${gte[@]} 
do

        #First alias
    if [ $((e%2)) = 0 ];
    then

        ia=$i

        #Second entrynum + alias + name 
    else

        if [ $g -ge 10 ]
        then
        
            f=" "

        elif [ $g -ge 100 ]
        then
        
            f="" 
          
        fi

        ic+=("$f$g \$$ia ~ "$i)
        g=$((g + 1))

    fi

    e=$((e + 1))

done

    #Tab Loop Counter
l=1

    #Longest entry
tablimit=0

    #For each name entry
for i in ${ic[@]}
do

        #If the longest entry is less than the current entry
    if [ $tablimit -lt ${#ic[$l]} ]
    then

            #Make the current entry the longest entry
        tablimit=${#ic[$l]}
        l=$((l + 1))

    fi

done

    #Half of the number of entries plus odd entry
e=$(($((${#ic[@]} / 2)) + 1))

    #Start at the end of the longest string
tablimit=$((tablimit + 1))

    #Column Loop Counter
g=1

    #Arrange into 2 Columns
while [[ $g -le $e ]]
do

        #Tab Loop Counter
    l=${#ic[$g]}


        #Tab Unit
    tab=("")

        #For entries shorter than the longets entry
    while [[ $l -le $tablimit ]]
    do

            #Add space to entries to align columns
        tab+=("")
        l=$((l + 1))

    done

        #Left column is first to halfway entry
        #Right column is halfway to last entry
    ix+=("${ic[$g]}$tab$tabsep${ic[$(($e + $g))]}")
    g=$((g + 1))

done

    #Display List
for i in ${ix[@]}
do

    echo $i

done
