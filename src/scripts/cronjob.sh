#!/bin/bash

# If using this file in another environment, edit the file paths in the echo statements to reflect the location of your viraldrugDB folder.

# Write crontab 
crontab -l > cron

# Echo jobs to cron file

# Execute script to pull data from all databases used in viraldrugDB.
# Update at midnight on the first of every month.
echo "0 12 1 * * /home/edoerr/viraldrugDB/src/scripts/update.sh" >> cron

# Execute script to backup database tables used in viraldrugDB.
# Backup at midnight on the fifth of every month.
echo "0 12 5 * * /home/edoerr/viraldrugDB/src/scripts/backup.sh" >> cron

# Install new cron file
crontab cron
rm cron
