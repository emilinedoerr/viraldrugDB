import requests
import json

# pull_dailymed.py
#
# @author Emiline Doerr
#
# Pull all data from dailymed given a list of viruses and drugs
# runs with Python3 

# Global variables:

# URL prefix for every query
url = "https://dailymed.nlm.nih.gov/dailymed/services/v2/"

# Return file extension (always json)
ext = ".json"

# Viruses
virus_list = ['herpes', 'hepatitis', 'influenza']

# Files with drugs
druglist_path = "/home/edoerr/viraldrugDB/src/data/"


def main():

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
            update = "UPDATE drug"
            
            # query dailymed spls for drug name
            query = url + "spls" + ext + "?drug_name=" + drug
        
            # request
            response = requests.get(query)
            data = json.loads(response.text)['data']
            # extract set ids
            title_list = [i['title'] for i in data] 
            update += " SET title_list = \"" + str(";".join(title_list[:5]))
            update += "\""
            update += " WHERE drug_name = \"" + drug + "\";"
            updates += [update]
    
    # Print insert statments
    for update in updates:
        print(update)




if __name__ == '__main__':
    main()
