/* Name: Emiline Doerr
 * Email: edoerr@unomaha.edu
 * Class: BIOI 4870/CSCI 8876 SP21
 * Course Project - viraldrugDB
 * 
 * Honor Pledge: On my honor as a student of the University of 
 * Nebraska at Omaha, I have neither given nor received unauthorized 
 * help on this programming assignment.
 *
 * Partners: NONE
 *
 * Resources: NONE
 *
 * Create table in MySQL to store small set of viruses
 * used in viraldrugDB.
 */

-- Change database
USE edoerr;

-- Drop table if exists
DROP TABLE IF EXISTS virus;

-- DDL to create tabe
CREATE TABLE virus(
	virus_id int NOT NULL AUTO_INCREMENT,
	common_name VARCHAR(30),
	ds_ids TEXT,
	disease_list TEXT,
	PRIMARY KEY (virus_id)
);

-- DDL to populate table
INSERT INTO virus VALUES(NULL,"herpes",NULL,NULL);
INSERT INTO virus VALUES(NULL,"hepatitis B",NULL,NULL);
INSERT INTO virus VALUES(NULL,"influenza",NULL,NULL);
