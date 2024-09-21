#!/bin/zsh

#Paths
export gitash=$ashes/git.ash
export gitp=$ashes/.gitp
export ashgit=$usrpath/.ashgit
export gitpushes=$ashgit/.ashpush
export gitpushtrash=$ashgit/.ashpushtrash
export gitpulls=$ashgit/.ashpull
export gitpulltrash=$ashgit/.ashpulltrash
export ashkeypub=$ashgit/.ashkey/.pub
export ashkeypri=$ashgit/.ashkey/.pri

#List of repos
source $ashgit/git.repos.ash
alias catrepos="cat $ashgit/git.repos.ash"

#Make ~/.ashgit folder system
alias gashin=$gitp/git.init.ash

#Git push repo
function gush {
source $gitp/git.push.ash
}

#Git pull repo
function gull {
source $gitp/git.pull.ash
}


