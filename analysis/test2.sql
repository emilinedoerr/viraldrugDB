--- Data Analysis 2: use the colloquial term 'herpes' to search the database.
-- Database that the tables are found in
USE edoerr;

-- 2.1 Query the database for all herpes drugs.
select drug.drug_name, virus.common_name FROM drug INNER JOIN virus ON drug.virus_id=virus.virus_id where virus.common_name LIKE "herpes";

-- 2.2 Obtain the title list for all herpes drugs
select drug.drug_name, virus.common_name, drug.title_list FROM drug INNER JOIN virus ON drug.virus_id=virus.virus_id where virus.common_name LIKE "herpes";

