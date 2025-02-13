#!/bin/bash

echo "=============================="
echo "Automated File Organizer"
echo "=============================="

read -p "Input directory to Organize by type: " dirPath

musicDir="$dirPath/Music"
photoDir="$dirPath/Photos"
otherDir="$dirPath/Other"

musicCount=0
photoCount=0
otherCount=0
if [ -d "$dirPath" ]
then

    for file in "$dirPath"/*
    do
        if [[ "$file" == *.mp3 ]]
        then
            [ ! -d "$musicDir" ] && mkdir -p "$musicDir"

            mv "$file" "$musicDir"
            ((musicCount++))
        elif [[ "$file" ==  *.jpg ]]
        then
            [ ! -d "$photoDir" ] && mkdir -p "$photoDir"

            mv "$file" "$photoDir"
            ((photoCount++))

        else
            [ ! -d "$otherDir" ] && mkdir -p "$otherDir"
                
                mv "$file" "$otherDir"
                ((otherCount++))
        fi
    done

    echo "File has been organized!"
    echo "Total photo moved: $photoCount" 
    echo "Total music moved: $musicCount"
    echo "Total other moved: $otherCount"
else
    echo "No directory exist"

fi