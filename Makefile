HTML_FILES=01-introduction-web.html 01-introduction-print.html

all : $(HTML_FILES)
	echo All files are now up to date

%.pdf : %.html
	R -e 'pagedown::chrome_print("%")'
