#!/bin/bash

# Get the path of the deploy script
LOCALPATH="$( cd "$( dirname "$0" )" && pwd )"

# Create the ~/.css folder (if it doesn't already exist)
if [[ ! -d ~/.css ]] && [[ ! -e ~/.css ]]; then
    mkdir ~/.css
elif [[ ! -d ~/.css ]]; then
    echo "Cannot create ~/css folder. File exists already and is not a directory."
    exit 1
fi

# Link the css scripts for dotjs to read
for FILE in docs.google.com.css ; do
    if [[ ! -e ~/.css/$FILE ]] ; then
        ln -s $LOCALPATH/$FILE ~/.css/$FILE
    fi
done

