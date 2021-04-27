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
        # query dailymed spls for drug name
        query = url + "spls" + ext + "?drug_name=" + drug
        print(query)
        
    # request
    response = requests.get(query)
    
    # Check page count
    metadata = json.loads(response.text)['metadata']
    print("TOTAL PAGES", metadata['total_pages'])
    
    data = json.loads(response.text)['data']
    # extract set ids
    title_list = [i['title'] for i in data]
    setid_list = [i['setid'] for i in data] 
    print(title_list)
    print(setid_list)
    # keep going if time ...
    # for each set id:
    # extract ndc list
    # return total ndc list to drug


if __name__ == '__main__':
    main()
