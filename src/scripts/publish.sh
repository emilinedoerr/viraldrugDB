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
# - Error handling
# linuxcommand.org/lc3_wss0140.php
# 
# Script follows here:

# 1. Read filename
echo "Name of file in webcontent/ to publish:"
read FILENAME
# 2. Check if file exists (Error handling)
if ls ~/viraldrugDB/webcontent/$FILENAME; then
	# TODO: check if file contents match
	echo "Publishing file $FILENAME..."
	
	# 3. Remove file from public_html
	rm ~/public_html/$FILENAME

	# 4. Copy file from project to public_html
	cp ~/viraldrugDB/webcontent/$FILENAME ~/public_html/

	# 5. Update permissions to publish
	chmod +x ~/public_html/$FILENAME
	echo "File $FILENAME successfully published."
else
	echo "File $FILENAME does not exist. Aborting." 1>&2
	exit 1
fi
