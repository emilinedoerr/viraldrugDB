# ViralDrugDB
ViralDugDB is a database created to store a small set of viruses and antiviral drugs approved to treat them.

## Usage
### From the website
Visit the [homepage](http://odin.unomaha.edu/~edoerr/viraldrugDB.html).
Browse through the [list of drugs](http://odin.unomaha.edu/~edoerr/drug.php)
Browse through the [list of viruses](http://odin.unomaha.edu/~edoerr/viruses.php).

### From your local environment
#### Installation
The project can be downloaded from GitHub.
Because is project was built in the Odin server maintained by the University of Nebraska at Omaha, the downloaded project may not work if you do not have an account on the Odin server.
#### Developer
##### Cronjobs
Linux cronjob used to update data via API pulls and backup database with mysql dumps once every month.
To update the cronjob, open the 'cronjob.sh' script and ensure file locations are correct.
Execute the script to install the cronjobs.

##### Update data
To manually pull data from PubChem, DailyMed, and KEGG, execute the `update.sh` script found in the scripts/ folder.

##### Backup database
To create a backup of both tables, execute the backup.sh` script found in the scripts/ folder. 

### License
This project was created with an [MIT](https://choosealicense.com/licenses/mit/) License.
