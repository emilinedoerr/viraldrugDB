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

# Viruses
virus_list = ['herpes', 'hepatitis', 'influenza']


def main():


    # For each virus:
    # (for now only process one at a time)
    virus = virus_list[0]
    
    # query dailymed spls for drug name
    query = url + "list/" + virus
    print(query)
        
    # request
    #response = requests.get(query)
    
    # Check page count
    #metadata = json.loads(response.text)['metadata']
    #print("TOTAL PAGES", metadata['total_pages'])
    
    #data = json.loads(response.text)['data']
    # extract set ids
    #setid_list = [i['setid'] for i in data] 

    # keep going if time ...
    # for each set id:
    # extract ndc list
    # return total ndc list to drug


if __name__ == '__main__':
    main()
