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
INSERT INTO drug VALUES(NULL,"Acyclovir","herpes","135398513","C8H11N5O3","2-amino-9-(2-hydroxyethoxymethyl)-1H-purin-6-one");
INSERT INTO drug VALUES(NULL,"Valacyclovir","herpes","135398742","C13H20N6O4","2-[(2-amino-6-oxo-1H-purin-9-yl)methoxyethyl (2S)-2-amino-3-methylbutanoate");
INSERT INTO drug VALUES(NULL,"Ganciclovir","herpes","135398740","C9H13N5O4","2-amino-9-(1,3-dihydroxypropan-2-yloxymethyl)-1H-purin-6-one");
INSERT INTO drug VALUES(NULL,"Foscarnet","herpes","3415","CH3O5P","phosphonoformic acid");
INSERT INTO drug VALUES(NULL,"Cidofovir","herpes","60613","C8H14N3O6P","[(2S)-1-(4-amino-2-oxopyrimidin-1-yl)-3-hydroxypropan-2-yl]oxymethylphosphonic acid");
INSERT INTO drug VALUES(NULL,"Valganciclovir","herpes","135413535","C14H22N6O5","[2-[(2-amino-6-oxo-1H-purin-9-yl)methoxy]-3-hydroxypropyl] (2S)-2-amino-3-methylbutanoate");
INSERT INTO drug VALUES(NULL,"Amantadine","hepatitis","2130","C10H17N","adamantan-1-amine");
INSERT INTO drug VALUES(NULL,"Rimantadine","hepatitis","5071","C12H21N","1-(1-adamantyl)ethanamine");
INSERT INTO drug VALUES(NULL,"Oseltamivir","hepatitis","65028","C16H28N2O4","ethyl (3R,4R,5S)-4-acetamido-5-amino-3-pentan-3-yloxycyclohexene-1-carboxylate");
INSERT INTO drug VALUES(NULL,"Zanamivir","hepatitis","60855","C12H20N4O7","(2R,3R,4S)-3-acetamido-4-(diaminomethylideneamino)-2-[(1R,2R)-1,2,3-trihydroxypropyl]-3,4-dihydro-2H-pyran-6-carboxylic acid");
INSERT INTO drug VALUES(NULL,"Amantadine","influenza","2130","C10H17N","adamantan-1-amine");
INSERT INTO drug VALUES(NULL,"Rimantadine","influenza","5071","C12H21N","1-(1-adamantyl)ethanamine");
INSERT INTO drug VALUES(NULL,"Oseltamivir","influenza","65028","C16H28N2O4","ethyl (3R,4R,5S)-4-acetamido-5-amino-3-pentan-3-yloxycyclohexene-1-carboxylate");
INSERT INTO drug VALUES(NULL,"Zanamivir","influenza","60855","C12H20N4O7","(2R,3R,4S)-3-acetamido-4-(diaminomethylideneamino)-2-[(1R,2R)-1,2,3-trihydroxypropyl]-3,4-dihydro-2H-pyran-6-carboxylic acid");
