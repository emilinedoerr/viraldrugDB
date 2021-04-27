import requests
import json

# pull_kegg.py
#
# @author Emiline Doerr
#
# Pull data from KEGG given a list of virus common names
# Print SQL update staements
# Intended to be run by bash script
# runs with Python3 

# Global variables:

# URL prefix for every query
url = "http://rest.kegg.jp/"

# Return file extension (always json)
ext = ".json"

# Viruses (common names)
virus_list = ['herpes', 'hepatitis B', 'influenza']


def main():


    # Placeholder for pulled data
    updates = list()
    
    # For each virus:
    for virus in virus_list:

        # Update statement
        update = "UPDATE virus"
        
        # Placeholder for KEGG disease ids
        ds_id = list()

        # Placeholder for KEGG diseases list
        ds_list = list()

        # query kegg diseases with common name
        query = url + "find/disease/" + virus
        response = requests.get(query)
        data = str(response.text)

        # get entry id and disease names
        # KEGG retuns data as a tab-separated string
        data = data.split("\n")
        for i in range(len(data)):
            temp = data[i].split("\t")
            # Skip extra new lines
            if temp != [""]:
                ds_id += [temp[0]]
                ds_list += [temp[1]]

        # process strings
        # Write lists as one string with ";" separator
        update += " SET ds_ids = \"" + str(";".join(ds_id))
        update += "\", disease_list = \"" + str(";".join(ds_list)).replace("; ",";")
        update += "\""
        update += " WHERE common_name = \"" + virus + "\";"
        updates += [update]
    
    # Print insert statments
    for update in updates:
        print(update)

if __name__ == '__main__':
    main()
