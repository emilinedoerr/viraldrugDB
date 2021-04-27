#!/bin/bash

# Variables
MYSQL_DB="edoerr"

# get update file


# run python script, replace update
python3 /home/edoerr/viraldrugDB/src/scripts/pull_kegg.py > update.kegg.sql

# update table in mysql
mysql $MYSQL_DB < update.kegg.sql
