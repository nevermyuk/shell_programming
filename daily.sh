#!/bin/bash

# My daily routine script
DOCUMENTS="/home/$USER/Desktop/shell_script_projs/museum/documents"
# Display Calendar

cal

# Display the date and time in UTC format
date -u

#Greetings

echo "Great day $LOGNAME!"

if [ "$PWD" == "$HOME" ]
then
	echo "You are at home"
else
	echo "You are in $PWD"
fi

# Show what we have to work on today
for doc in "$DOCUMENTS"/*.txt
do
	echo  "Document: $doc"
done

