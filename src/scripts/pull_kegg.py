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
url = "http://rest.kegg.jp/"

# Return file extension (always json)
ext = ".json"

# Viruses (common names)
virus_list = ['herpes', 'hepatitis B', 'influenza']


# File to write inserts
sql_path = "/home/edoerr/viraldrugDB/src/testkegg.sql"


def main():


    # Placeholder for insert statements
    inserts = list()

    # Placeholder for update statements
    updates = list()

    # For each virus:
    for virus in virus_list:

        # Write insert statement for each virus in the list
        insert = "INSERT INTO virus VALUES(NULL,\"" + virus
        # Update
        update = "UPDATE TABLE drug SET "
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

        # process strings for insert
        # Write lists as one string with ";" separator
        ds_id_str = str(";".join(ds_id))
        
        # Add to update
        update += "ds_ids=\"" + ds_id_str "\""
        
        ds_list_str = str(";".join(ds_list)).replace("; ",";")

        # Join strings and add quotes
        ds_str = "\",\"".join([ds_id_str, ds_list_str])

        # Add alter statement for a virus to list
        insert += "\",\"" + ds_str + "\");"
        inserts += [insert]

        "WHERE virus=\"" + virus + "\""
    # Print insert statments
    for insert in inserts:
        print(insert)

if __name__ == '__main__':
    main()
