#!/bin/zsh

#!/bin/zsh

dbln

if [ "$1" != "" ]
then

    dbstop $1

    dbremove $1
   
        #Write to boxdex ~/.ashes/db.names.ash
    sed -i "s/$1//g" $dbashs/db.names.ash

    e=1

    while [[ ${boxdex[$e]} != $1 ]]
    do
       
        e=$((e + 1))

    done

    sed -i "s/${boxdex[$(($e - 1))]}//g" $dbashs/db.names.ash
    sed -i "s/  )/)/" $dbashs/db.names.ash
    echo ${boxdex[$(($e - 1))]}

else

    echo "Arguments Needed: NAME"

fi

dbauton
dbcatn
