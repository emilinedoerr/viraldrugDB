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
INSERT INTO virus VALUES(NULL,"herpes","ds:H00365;ds:H00366","Herpes simplex virus infection;HSV infection;Varicella;Chickenpox;Herpes zoster;Shingles");
INSERT INTO virus VALUES(NULL,"hepatitis B","ds:H00412","Hepatitis B;Hepatitis B virus (HBV) infection");
INSERT INTO virus VALUES(NULL,"influenza","ds:H00304;ds:H00398;ds:H00399;ds:H00400","Haemophilus influenzae infection;Influenza;Avian influenza;Bird flu;H5N1 flu;Parainfluenza infection");
