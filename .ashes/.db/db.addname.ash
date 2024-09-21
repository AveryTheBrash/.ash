#!/bin/zsh

    #Libraries
source $dbash

    #Splashscreen
echo "distro.box.alias ~ Create an alias for an already existing distrobox"

    #Distros
dbls

    #Distro name
echo "Box Name: (E.g., ArchBlender)"
read boxname

    #Distro alias
echo "New Box Alias: (E.g, ab)"
read initials


    #Write to boxdex ~/.ashes/db.names.ash
sed -i "s/)/ $initials $boxname)/" $dbashs/db.names.ash

    #List known distroboxes
dbauton
dbcatn
dbln

