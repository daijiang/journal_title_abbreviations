#! /usr/bin/env python

url = "https://raw.githubusercontent.com/JabRef/reference-abbreviations/master/journals/journal_abbreviations_"

sources = ['ams', 'entrez', 'general', 'geology_physics', 'ieee', 'lifescience', 'mechanical', 'medicus', 'meteorology', 'sociology']

import requests
for origin in sources:
    source_url = url + origin + ".txt"
    r = requests.get(source_url)
    fname = origin + "_abbr.txt"
    with open(fname, 'w') as abbrlist:
        abbrlist.write(r.text)

