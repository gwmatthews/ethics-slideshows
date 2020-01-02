PDF_FILES=01-introduction.pdf 01-print.pdf 01-introduction-print.pdf \
02-logic.pdf 02-print.pdf 02-logic-print.pdf \
03-fallacies.pdf 03-print.pdf 03-fallacies-print.pdf \
04-relativism.pdf 04-print.pdf 04-relativism-print.pdf \
05-religion.pdf 05-print.pdf 05-religion-print.pdf \
06-egoism.pdf 06-print.pdf 06-egoism-print.pdf
 
all : $(PDF_FILES) 
	echo All files are now up to date
	
clean :
	rm -f ./pdf/*.pdf

%.pdf : %.html
	R -e 'pagedown::chrome_print("$<", "pdf/$@")'

%.pdf : %.tex
	pdflatex -output-directory ./pdf $< 
	rm -f ./pdf/*.log
	rm -f ./pdf/*.synctex.gz
	rm -f ./pdf/*.aux



