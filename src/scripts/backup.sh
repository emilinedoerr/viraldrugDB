#/bin/bash
/usr/bin/mysqldump -–user=localhost
-–databases edoerr | gzip > 
/home/cPanel-User/edoerr -`date +%Y%m%d%H%M`.sql.gz
