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

-- Change database
USE edoerr;

-- Drop table if exists
DROP TABLE IF EXISTS drug;

-- DDL to create table (need to fix forein key)
/*CREATE TABLE drug(
	drug_id int NOT NULL AUTO_INCREMENT,
	virus_id int NOT NULL,
	name VARCHAR(30),
	PRIMARY KEY (drug_id),
	FOREIGN KEY (virus_id) REFERENCES drug(drug_id)
);
 */
-- DDL to create table
CREATE TABLE drug(
	drug_id int NOT NULL AUTO_INCREMENT,
	name VARCHAR(30),
	virus VARCHAR(30),
	PRIMARY KEY (drug_id)
);

-- DML to insert drug names
-- Drug list defined by Razonable
INSERT INTO drug (name, virus)
VALUES ("Acyclovir", "herpes"),
       ("Valacyclovir", "herpes"),
       ("Ganciclovir", "herpes"),
       ("Foscarnet", "herpes"),
       ("Cidofovir", "herpes"),
       ("Valganciclovir", "herpes"),
       ("Adefovir", "hepatitis"),
       ("Emtricitabine", "hepatitis"),
       ("Entecavir", "hepatitis"),
       ("Lamivudine", "hepatitis"),
       ("Telbivudine", "hepatitis"),
       ("Tenofivir", "hepatitis"),
       ("Amantadine", "influenza"),
       ("Rimantadine", "influenza"),
       ("Oseltamivir", "influenza"),
       ("Zanamivir", "influenza");

-- Print table to verify
DESCRIBE drug;
SELECT * FROM drug;

