import json
import requests

# pull_pubchem.py
#
# @author Emiline Doerr
#
# Pull all data from pubchem given a list of viruses and drugs
# runs with Python3 

# Global variables:

# URL prefix for every query
url = "https://pubchem.ncbi.nlm.nih.gov/rest/pug/"

# Return file extension (always json)
ext = "JSON"

# Viruses
virus_list = ['herpes', 'hepatitis', 'influenza']

# Files with drugs
druglist_path = "/home/edoerr/viraldrugDB/src/data/"


def main():


    # Placeholder for pulled data
    updates = list()
    
    # For each virus:
    for virus in virus_list:
        
        # Read in file with drug list
        filepath = druglist_path + virus + "_drugs.txt"
        drug_file = open(filepath, 'r')
        drug_list = list()
        line = drug_file.readline()
        while (line):
            drug_list += [line.strip()]
            line = drug_file.readline()
        drug_file.close()
    
        for drug in drug_list:
        
            # Update statement
            update = "UPDATE virus SET "            

            # API URL Path
            # query = prefix/[INPUT]/[OPERATION]/[OUTPUT]?[OPTIONS]
            query = url + "compound/name/" + drug
    
            # Return Molecular Formula and IUPAC (and cid)
            operation_properties = "/property/MolecularFormula,IUPACName/"
            query += operation_properties + ext 
    
            # Retrieve response
            response = requests.get(query)
            data = json.loads(response.text)
    
            # Access data
            prop_list = data['PropertyTable']['Properties'][0]
            update += " cid = \"" + str(prop_list['CID'])
            update += "\", mol_formula = \"" + str(prop_list['MolecularFormula'])
            update += "\", iupac_name = \"" + str(prop_list['IUPACName'])
            update += "\" WHERE drug_name = \"" + drug + "\";" 
            updates += [update]
    
    # Print update statements
    for update in updates:
        print(update)


if __name__ == '__main__':
    main()
