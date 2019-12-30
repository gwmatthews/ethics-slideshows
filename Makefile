HTML_FILES=01-introduction.html 02-logic.html

all : $(HTML_FILES)
	echo All files are now up to date

clean : 
	rm -f $(HTML_FILES) 

%.pdf : %.html
	decktape remark $< 
