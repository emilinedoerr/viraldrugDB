#!/bin/bash

# Backup data in viraldrugDB via mysqldump.


mysqldump edoerr virus > /home/edoerr/viraldrugDB/src/data/virus.dump.sql
mysqldump edoerr drug > /home/edoerr/viraldrugDB/src/data/drug.dump.sql

