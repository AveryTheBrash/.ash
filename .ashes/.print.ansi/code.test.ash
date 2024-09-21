#!/bin/zsh

mistxb="/home/greeder/.ashes/.print.ansi/pictures/mist0624/VERMILEONHART-BROKEN_ELIZA.XB"
mistansi="/home/greeder/.ashes/.print.ansi/pictures/mist0624/ZII-BITG.ANS"
averyash="/home/greeder/.ashes/.print.ansi/pictures/ashansiart/300.fishing.ash"

for i in `iconv --list`
do

    iconv -f $i < `echo $mistansi` | cat

done

read l
