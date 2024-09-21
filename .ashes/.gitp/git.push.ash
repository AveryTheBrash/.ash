#!/bin/zsh

#Local repo, Github repo, Local files

localrepo=$1

localpath="$gitpushes/$localrepo"

githubrepo=$2

localfiles=$3

localarchive=$4

localfiles=( ${(@z)"$( echo $3 )"} )

e=0

for i in $@
do
    
    if [ $i = '' ]
    then

        errorcode+=("Error on parameter ${#[$e]}: value is null.\n Make sure your variables and aliases\ndon\'t conflict")

    fi

    e=$((e + 1))

done

if [ $errorcode != '' ]
then

    echo $errorcode
    exit    

fi

echo "Checking git directory \n$localpath...\n"
mkdir $localpath >& /dev/null

echo "Checking trash directory \n$gitpushtrash/$localrepo...\n"
mkdir $gitpushtrash/$localrepo >& /dev/null

echo "Moving current git files \n$localpath \n~~to-- trash \n$gitpushtrash/$localrepo...\n"
cp -f -R $localpath $gitpushtrash/$localrepo

echo "Removing current git files in \n$localpath...\n"
rm -f -r $localpath

echo "Reinstating git directory \n$localpath..."
mkdir $localpath >& /dev/null

echo "Copying your files \n$localfiles \n~~to-- your git directory \n$localpath\n"
cp -f -R $localfiles $localpath

echo "Copying your files \n$localfiles \n~~to-- your archive \n$localarchive\n"
cp -f -R $localfiles $localarchive

echo "Entering git in \n$localpath...\n"
cd $localpath

git init

git add .

echo "Enter commit comment:"
read comment

git commit -m "$comment"

ssh-add $ashkeypub/*

git push -f --set-upstream $githubrepo master
