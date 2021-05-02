#!/bin/bash

# author:  Emiline Doerr
#
# Created: March 24
#
# Publish front end code in project to public_html folder
# in Odin.
#
# Resources:
# tutorialspoint.com/unix/unix-using-variables.htm
# linuxcommand.org/lc3_wss0140.php
# baeldung.com/linux/fastest-check-files-same-content

# Error exit

error_exit()
{
	echo "$1" 1>&2
	exit 1
}

# 1. Read filename
FILENAME=$1
FILEPATH=~/viraldrugDB/webcontent/$FILENAME
PUBLIC_HTML=~/public_html/
# 2. Check if file exists (Error handling)
[ ! -z "$FILENAME" ] || error_exit "Please specify a filename when executing this script."
[ -e $FILEPATH ] || error_exit "File $FILEPATH does not exist. Aborting." 
# 3. Check if file exists in public_html/
if [ -e $PUBLIC_HTML$FILENAME ]; then
	# 3.1. Remove file from public_html
	rm $PUBLIC_HTML$FILENAME
fi

echo "Publishing file $FILENAME to public_html/..."	
# 4. Copy file from project to public_html
cp $FILEPATH $PUBLIC_HTML 
# 5. Update permissions to publish
chmod +x $PUBLIC_HTML$FILENAME
echo "File $FILENAME successfully published."
