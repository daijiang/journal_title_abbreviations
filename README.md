# journal_title_abbreviations
Journal title abbreviations file to be used with pandoc-citeproc

I did not find such a file when I was trying to compile a manuscript for a journal that reqires abbreviations in references. Therefore, I made one for this manuscript. 

The current file only includes a subset of ecological journals. However, it definitely can and should be expanded.


Example code to use abbreviation files with Pandoc:

    pandoc -s -S input.md -o out.rtf --filter pandoc-citeproc --template=template.tex --bibliography=ref.bib --csl=journal_style.csl --citation-abbreviations=abbreviations.json
