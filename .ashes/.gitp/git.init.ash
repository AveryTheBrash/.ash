#!/bin/zsh

mkdir $ashgit
mkdir $gitpushes
mkdir $gitpushtrash
mkdir $gitpulls
mkdir $gitpulltrash
mkdir $ashkeypub
mkdir $ashkeypri

touch $ashgit/git.repos.ash
cp  $gitp/git.reposexample.ash $ashgit
