python = python

abbreviations.json: list.txt
	cat $< | sort | uniq >> uniques.txt
	rm $<

list.txt: get_lists.py
	$(python) $<
	cat *_abbr.txt >> $@
	rm *_abbr.txt
