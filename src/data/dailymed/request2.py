import sys
import getopt
import json
import requests


def main():
   
    # Initialize parameters
    service = ""

    # Read in the command-line arguments into the opts list.
    # Opts: -s [SERVICE] 
    opts, args = getopt.getopt(sys.argv[1:], "s:")

    # Process the opt and arg lists displaying the argument of
    # each option.
    for (opt, arg) in opts:
        # Specifies service
        if opt == '-s':
            print(str(arg))

    base = "https://dailymed.nlm.nih.gov/dailymed/services/"
    filters = "?drug_name=acyclovir"
    names = "v2/drugnames"
    ndc = "v2/ndcs"
    file_ext = ".json"
    
    req_ndcs = base + ndc + file_ext + filters
    req_names = base + names + file_ext + filters
    #request = base + resource + file_ext + filters 
    
    request = req_ndcs
    print(request)
    response = requests.get(request)
    drugnames = json.loads(response.text)

    print(list(drugnames.values())[0])  # data is here
    print(len(list(drugnames.values())[0]))
    print(len(drugnames))
    

if __name__ == '__main__':
    main()
