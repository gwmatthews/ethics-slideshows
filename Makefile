FILES=01-introduction.html 01-introduction.pdf 01-Print.pdf 01-introduction-print.pdf \
02-logic.html 02-logic.pdf 02-Print.pdf 02-logic-print.pdf \
03-fallacies.html 03-fallacies.pdf 03-Print.pdf 03-fallacies-print.pdf \
04-relativism.html 04-relativism.pdf 04-Print.pdf 04-relativism-print.pdf \
05-religion.html 05-religion.pdf 05-Print.pdf 05-religion-print.pdf \
06-egoism.html 06-egoism.pdf 06-Print.pdf 06-egoism-print.pdf \
07-contract.html 07-contract.pdf 07-Print.pdf 07-contract-print.pdf

all : $(FILES)
	echo All files are now up to date
	
cleantex :
	rm -f ./pdf/*.log
	rm -f ./pdf/*.synctex.gz
	rm -f ./pdf/*.aux
	rm -f ./pdf/*-Print.pdf
	
clean :
	rm -f ./0*.html
	rm -f ./pdf/*.pdf

%.html : %.Rmd
	R -e 'rmarkdown::render("$<", output_file = "$@")'

%.pdf : %.html
	R -e 'pagedown::chrome_print("$<", "pdf/$@")'

%.pdf : %.tex
	pdflatex -output-directory pdf $< 
	
