#!/bin/zsh

export dbash="$ashes/db.ash"
export dbashs="$ashes/.db"

    #Libraries
source $dbashs/db.names.ash
source $dbashs/db.images.ash

    #Distrobox
export db="distrobox"
export dbcreate=$db" create"
alias db=$db
alias dbcreate=$dbcreate
alias dbm="man "$db"-compatibility"
alias dbls=$db" ls"
alias dbe=$db" enter"
alias dber="sudo "$db" enter --root"
alias dbstop=$db" stop"
alias dbremove=$db" rm"

    #Create Distrobox
function dbc {
source $dbashs/db.create.ash
}

    #Remove Distrobox
function dbrm {
source $dbashs/db.remove.ash
}

    #View .ash Distrobox Library
alias dbcat="cat $dbash" #View this page of aliases
alias dbcatn="cat $dbashs/db.names.ash" #View Distrobox names
alias dbln="$dbashs/db.listnames.ash" #View Distrobox names
alias dbcati="cat $dbashs/db.images.ash" #View Distrobox images
alias dbli="$dbashs/db.listimages.ash" #View Distrobox images

    #.ash Distrobox Library Tools
alias dbenum="$dbashs/db.enternum.ash" #Select a Distrobox

alias dbaddi="$dbashs/db.addimage.ash" #Add Distrobox image to .ash library
alias dbaddn="$dbashs/db.addname.ash" #Add Distrobox name to .ash library

alias dbautoi="$dbashs/db.autoimages.ash" #Autogenerate Distrobox images into .ash
alias dbauton="$dbashs/db.autonames.ash" #Autogenerate Distrobox names into .ash
