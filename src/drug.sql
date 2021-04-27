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
	disease_name VARCHAR(30),
	cid VARCHAR(30),
	mol_formula VARCHAR(60),
	IUPAC_name TEXT,
	PRIMARY KEY (drug_id)
);

-- DDL to insert drug names
INSERT INTO drug VALUES(NULL,"Acyclovir","herpes",NULL,NULL,NULL);
INSERT INTO drug VALUES(NULL,"Valacyclovir","herpes",NULL,NULL,NULL);
INSERT INTO drug VALUES(NULL,"Ganciclovir","herpes",NULL,NULL,NULL);
INSERT INTO drug VALUES(NULL,"Foscarnet","herpes",NULL,NULL,NULL);
INSERT INTO drug VALUES(NULL,"Cidofovir","herpes",NULL,NULL,NULL);
INSERT INTO drug VALUES(NULL,"Valganciclovir","herpes",NULL,NULL,NULL);
INSERT INTO drug VALUES(NULL,"Amantadine","hepatitis B",NULL,NULL,NULL);
INSERT INTO drug VALUES(NULL,"Rimantadine","hepatitis B",NULL,NULL,NULL);
INSERT INTO drug VALUES(NULL,"Oseltamivir","hepatitis B",NULL,NULL,NULL);
INSERT INTO drug VALUES(NULL,"Zanamivir","hepatitis B",NULL,NULL,NULL);
INSERT INTO drug VALUES(NULL,"Amantadine","influenza",NULL,NULL,NULL);
INSERT INTO drug VALUES(NULL,"Rimantadine","influenza",NULL,NULL,NULL);
INSERT INTO drug VALUES(NULL,"Oseltamivir","influenza",NULL,NULL,NULL);
INSERT INTO drug VALUES(NULL,"Zanamivir","influenza",NULL,NULL,NULL);
