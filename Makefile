HTML_FILES=0*.html 

all : $(HTML_FILES)
	echo All files are now up to date

%.pdf : %.html
	R -e 'pagedown::chrome_print("$<", "pdf/$@")'
