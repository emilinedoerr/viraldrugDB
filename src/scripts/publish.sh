#!/bin/bash

# Name:  Emiline Doerr
# Class: BIOI 4870, Spring 2021
# Course Project
#
# Created: March 24
#
# Honor Pledge: On my honor as a student of the University of Nebraska at
# Omaha, I have neither given nor received unauthorized help on
# this programming assignment.
#
# NAME: Emiline Doerr
# NUID: 628
# EMAIL: edoerr@unomaha.edu
#
# Publish front end code in project to public_html folder
# in Odin.
#
# Resources:
# - Variables
# tutorialspoint.com/unix/unix-using-variables.htm
# - Error handling
# linuxcommand.org/lc3_wss0140.php
# - File comparison
# baeldung.com/linux/fastest-check-files-same-content
# 
# Script follows here:

# Error exit

error_exit()
{
	echo "$1" 1>&2
	exit 1
}

# 1. Read filename
echo "Name of file in webcontent/ to publish:"
read FILENAME
FILEPATH=~/viraldrugDB/webcontent/$FILENAME
PUBLIC_HTML=~/public_html/
# 2. Check if file exists (Error handling)
[ -e $FILEPATH ] || error_exit "File $FILEPATH does not exist. Aborting." 
# 3. Check if file exists in public_html/
if [ -e $PUBLIC_HTML$FILENAME ]; then
	# 3.1. Remove file from public_html
	rm $PUBLIC_HTML$FILENAME
fi
# (TODO) 4. Check if file contents match
#if cmp -e  /

echo "Publishing file $FILENAME to public_html/..."	
# 4. Copy file from project to public_html
cp $FILEPATH $PUBLIC_HTML 
# 5. Update permissions to publish
chmod +x $PUBLIC_HTML$FILENAME
echo "File $FILENAME successfully published."
