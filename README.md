# viraldrugDB

[Link to webpage](http://odin.unomaha.edu/~edoerr/viraldrugDB.php)

### Usage

## Developer
# Update data
To manually pull data from PubChem, DailyMed, and KEGG, execute the `update.sh` script found in the scripts/ folder.

# Backup database
To create a backup of both tables, execute the backup.sh` script found in the scripts/ folder. 

## User

### File Structure:
- All front end code in webcontent/ folder.

- All scripts in scripts/ folder.

- All DDL and other files are located in the data/ folder.


###  References used to write code:
PHP tutorial, Tutorial Republic. [Link](tutorialrepublic.com/php-tutorial/).
CSS Style Guide tutorial. [Link](https://www.w3schools.com/html/html_css.asp).
mysqldump Documentation, MariaDB. [Link](https://mariadb.com/kb/en/mysqldump/).
Linux cronjob tutorial, KVZ. [Link](https://kvz.io/schedule-tasks-on-linux-using-crontab.html).
