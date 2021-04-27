#!/bin/bash

# Call python scripts to pull data from API
# Put update statments into mysql

# Variables
MYSQL_DB="edoerr"
FILEPATH="/home/edoerr/viraldrugDB/src"

# run python script, replace update
python3 $FILEPATH/scripts/pull_kegg.py > $FILEPATH/data/update.kegg.sql
python3 $FILEPATH/scripts/pull_pubchem.py > $FILEPATH/data/update.pubchem.sql
python3 $FILEPATH/scripts/pull_dailymed.py > $FILEPATH/data/update.dailymed.sql

# update table in mysql
mysql $MYSQL_DB < $FILEPATH/data/update.kegg.sql
mysql $MYSQL_DB < $FILEPATH/data/update.pubchem.sql
mysql $MYSQL_DB < $FILEPATH/data/update.dailymed.sql

# remove files
rm $FILEPATH/data/update.kegg.sql
rm $FILEPATH/data/update.pubchem.sql
rm $FILEPATH/data/update.dailymed.sql
