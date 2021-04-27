# viraldrugDB

[Link to webpage](http://odin.unomaha.edu/~edoerr/viraldrugDB.php)

### Usage

#### Developer
##### Cronjobs
Linux cronjob used to update data via API pulls and backup database once every month.
To update the cronjob, open the 'cronjob.sh' script and ensure file locations are correct.
Execute the script to install the cronjobs.

##### Update data
To manually pull data from PubChem, DailyMed, and KEGG, execute the `update.sh` script found in the scripts/ folder.

##### Backup database
To create a backup of both tables, execute the backup.sh` script found in the scripts/ folder. 

#### User
#### View all drugs
Currently, the webpage linked at the top of this file will display the entire list of drugs.


### File Structure:
- All front end code in webcontent/ folder.

- All scripts in scripts/ folder.

- All DDL and other files are located in the data/ folder.

### License
This project was created with an MIT License.


###  References used to write code:
PHP tutorial, Tutorial Republic. [Link](tutorialrepublic.com/php-tutorial/).
CSS Style Guide tutorial. [Link](https://www.w3schools.com/html/html_css.asp).
mysqldump Documentation, MariaDB. [Link](https://mariadb.com/kb/en/mysqldump/).
Linux cronjob tutorial, KVZ. [Link](https://kvz.io/schedule-tasks-on-linux-using-crontab.html).
