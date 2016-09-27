# aspell --dont-backup --mode=tex -l en  -c  30toppi.tex

LATEX := *.tex tab/*.tex alg/*.tex tikz/*.tex

all: thesis.pdf

thesis.pdf: $(LATEX) biblio.bib
	pdflatex thesis.tex
	bibtex thesis.aux

watch:
	while true ; do inotifywait -qe close_write $(LATEX); $(MAKE) ; done

clean:
	rm -f *.log *.aux *.out *.bbl *.blg *.maf *.mtc*
