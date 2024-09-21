#!/bin/zsh

dbln

if [ "$4" != "" ]
then

    dbcreate -i $1 -n $2 $4
        #Write to boxdex ~/.ashes/db.names.ash
    sed -i "s/)/ $3 $2)/" $dbashs/db.names.ash

elif [ "$3" != "" ]
then

    dbcreate -i $1 -n $2
        #Write to boxdex ~/.ashes/db.names.ash
    sed -i "s/)/ $3 $2)/" $dbashs/db.names.ash

else

    echo "Arguments Needed: IMAGEPATH NAME ALIAS"

fi

dbauton
dbcatn
