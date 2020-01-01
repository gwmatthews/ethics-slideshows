HTML_FILES=0*.html 

all : $(HTML_FILES)
	echo All files are now up to date
	
clean :
	rm -f ./pdf/*.log
	rm -f ./pdf/*.synctex.gz

%.pdf : %.html
	R -e 'pagedown::chrome_print("$<", "pdf/$@")'
