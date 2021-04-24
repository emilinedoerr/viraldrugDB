import json
import requests

def main():
    

    base = "https://dailymed.nlm.nih.gov/dailymed/services/"
    filters = "?drug_name=acyclovir"
    names = "v2/drugnames"
    ndc = "v2/ndcs"
    file_ext = ".json"
    
    req_ndcs = base + ndc + file_ext + filters
    req_names = base + names + file_ext + filters
    #request = base + resource + file_ext + filters 
    print(request)
    response = requests.get(request)
    drugnames = json.loads(response.text)

    print(list(drugnames.values())[0])  # data is here
    print(len(list(drugnames.values())[0]))
    print(len(drugnames))
    

if __name__ == '__main__':
    main()
