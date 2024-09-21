#!/bin/zsh

	#Counter for each file and directory
length=0

	#Counter for each directory and path
dirs=0

	#For all files in $ansipics
for f in `ls -R $ansipics`; 
do

	#Skip paths
    if [ "$f" = "`echo $f | grep $ansipics`" ];
    then
	
	dirs=$((dirs + 1))

	    #Write files and folder names to array
    else
    	
	files+=($f)
    	length=$((length + 1))
    	files=("${files[@]}")
    fi
done

	#Select random number from the counter of files
randomi=$(( $RANDOM % $length ))

	#Plus 1 to avoid 0, plus dirs to skip the folder names
randomi=$((randomi + 1 + dirs))
filename="${files[randomi]}"

	#If file is a media file, convert to ASCII
if [ "$filename" = "`echo $filename | grep -e .ANS -e .ASC -e .IMG`" ]
then

	    #Stolen from zsh-ansimotd <3
        #Convert from the original character set (Code page 437)
        #See https://en.wikipedia.org/wiki/Code_page_437
    iconv -f 437 < `echo $ansipics/**/$filename` | cat

    #.xb files don't work, hopefully I can hook it up to ACiD soon
        elif [ "$filename" = "`echo $filename | grep -e .XB`" ]
then

    iconv -f 500 < `echo $ansipics/**/$filename` | cat

	#If file is an executable (.ash), run file
else

    $ansipics/**/$filename

fi
