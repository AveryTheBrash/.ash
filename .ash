#!/bin/zsh

    #Path
export usrpath="/home/$USER"
export ash="$usrpath/.ash"
export ashes="$usrpath/.ashes"

    #AnsiSplashscreen
source $ashes/print.ansi.ash
ansiprint

    #Libraries
source $ashes/db.ash
source $ashes/git.ash
source $ashes/zsh.ash  
source $ashes/gif.wallpaper.ash

    #.ash
alias helpash="cat $userpath/README.txt"
alias catash="cat ~/.ash"
alias lsashes="ls $ashes"
alias reash="~/.ash"
