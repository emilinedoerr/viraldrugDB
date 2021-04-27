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
 * Create table in MySQL to store viral drugs
 * used in viraldrugDB.
 */

-- Drop table if exists
DROP TABLE IF EXISTS drug;

-- DDL to create table
CREATE TABLE drug(
	drug_id int NOT NULL AUTO_INCREMENT,
	drug_name VARCHAR(30),
	title_list TEXT,
	virus_id int NOT NULL,
	cid VARCHAR(30),
	mol_formula VARCHAR(60),
	IUPAC_name TEXT,
	PRIMARY KEY (drug_id),
	FOREIGN KEY (virus_id) REFERENCES virus (virus_id)
);

-- DDL to insert drug names
INSERT INTO drug VALUES(NULL,"Acyclovir","",1,NULL,NULL,NULL);
INSERT INTO drug VALUES(NULL,"Valacyclovir","",1,NULL,NULL,NULL);
INSERT INTO drug VALUES(NULL,"Ganciclovir","",1,NULL,NULL,NULL);
INSERT INTO drug VALUES(NULL,"Foscarnet","",1,NULL,NULL,NULL);
INSERT INTO drug VALUES(NULL,"Cidofovir","",1,NULL,NULL,NULL);
INSERT INTO drug VALUES(NULL,"Valganciclovir","",1,NULL,NULL,NULL);
INSERT INTO drug VALUES(NULL,"Amantadine","",2,NULL,NULL,NULL);
INSERT INTO drug VALUES(NULL,"Rimantadine","",2,NULL,NULL,NULL);
INSERT INTO drug VALUES(NULL,"Oseltamivir","",2,NULL,NULL,NULL);
INSERT INTO drug VALUES(NULL,"Zanamivir","",2,NULL,NULL,NULL);
INSERT INTO drug VALUES(NULL,"Amantadine","",3,NULL,NULL,NULL);
INSERT INTO drug VALUES(NULL,"Rimantadine","",3,NULL,NULL,NULL);
INSERT INTO drug VALUES(NULL,"Oseltamivir","",3,NULL,NULL,NULL);
INSERT INTO drug VALUES(NULL,"Zanamivir","",3,NULL,NULL,NULL);
