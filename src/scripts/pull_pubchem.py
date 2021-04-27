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


    # For each virus:
    # (for now only process one at a time)
    virus = virus_list[0]
    
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
        # drug_name,virus_name,cid,mol_formula,iupac_name
        insert = "INSERT INTO drug VALUES("
        insert += drug + "," + virus + ","

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
        insert += str(prop_list['CID']) + ","
        insert += str(prop_list['MolecularFormula']) + ","
        insert += str(prop_list['IUPACName'])
        print(insert)


if __name__ == '__main__':
    main()
