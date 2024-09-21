#!/bin/zsh

    #Libraries
source $dbash

    #Splashscreen
echo "distro.creator.alias ~ Create an alias for a distrobox image"

    #Distros
dbli

    #Distro path
echo "Path to Image with Flags: (E.g., --pull -i quay.io/toolbx/arch-toolbox:latest -n)"
read path

    #Distro alias
echo "New Distro Alias: (E.g., arch)"
read distro

sed -i "s/)/ $distro $path)/" $dbashs/db.images.ash

dbautoi
dbcati

