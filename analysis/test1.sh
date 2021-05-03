#!/bin/bash

# Data Analysis 1 - Performance Metrics
# Assess performance of data retrieval from within the database
echo "Time to run update script:"
time ./../src/scripts/update.sh

# Verify that the data can be updated without throwing errors
echo "Updating data.."
./home/edoerr/viraldrugDB/src/scripts/update.sh

# Verify that the cronjob can be installed without throwing errors
echo "Running cronjob.."
./home/edoerr/viraldrugDB/src/scripts/cronjob.sh
