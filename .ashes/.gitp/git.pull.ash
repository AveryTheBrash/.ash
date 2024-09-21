#!/bin/zsh

localrepo=$1

localpath="$gitpulls/$localrepo"

githubrepo=$2

localarchive=$4

mkdir $gitpulls/$localrepo

mkdir $gitpulltrash/$localrepo

cp -f -r $localpath $gitpulltrash/$localrepo

cp -f -r $localpath $localarchive

cd $localpath

git init

ssh-add $ashkeypub/*

git pull $githubrepo
