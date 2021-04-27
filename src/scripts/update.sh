#!/bin/bash

# Call python scripts to pull data from API
# Put update statments into mysql

# Variables
MYSQL_DB="edoerr"

# run python script, replace update
python3 /home/edoerr/viraldrugDB/src/scripts/pull_kegg.py > update.kegg.sql
python3 /home/edoerr/viraldrugDB/src/scripts/pull_pubchem.py > update.pubchem.sql



# update table in mysql
mysql $MYSQL_DB < update.kegg.sql
mysql $MYSQL_DB < update.pubchem.sql
