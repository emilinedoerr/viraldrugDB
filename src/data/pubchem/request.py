import json
import requests

def main():

    # Request URL Path
    # request = prefix/[INPUT]/[OPERATION]/[OUTPUT]?[OPTIONS]
    prefix = "https://pubchem.ncbi.nlm.nih.gov/rest/pug/"
    # INPUT - says which records to use as the subject of the query
    input_spec = "compound/name/acyclovir/"
    # OPERATION - says what to do with input records
    operation_spec = "cids/" # return cid
    operation_spec = "property/MolecularFormula,IUPACName/" # return properties
    # OUTPUT - desired output format
    output_spec = "JSON" # specify JSON format
    
    # Build Request
    request = prefix + input_spec + operation_spec + output_spec
    print(request)
    
    # Retrieve response
    response = requests.get(request)
    drugnames = json.loads(response.text)
    
    # Access data
    print(list(drugnames.values())[0])  # data is here

    #json_file = open("drugnames.json", "r")
    #line = json_file.readline()
    #json_string = ""
    #while (line):
    #    json_string += line
    #    line = json_file.readline()

   # data = json.loads(json_string)

if __name__ == '__main__':
    main()
