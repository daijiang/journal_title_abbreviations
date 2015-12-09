python = python

abbreviations.json: list.txt
	cat $< | sort | uniq >> uniques.txt
	rm $<
	sed -i '/^#/d' uniques.txt
	sed -i '/^$$/d' uniques.txt
	$(python) jsonify.py
	rm uniques.txt

list.txt: get_lists.py
	$(python) $<
	cat *_abbr.txt >> $@
	rm *_abbr.txt
