LATEX := *.tex

all: diapositives.pdf

# if needed : latex file will be $@
diapositives.pdf: $(LATEX)
	pdflatex diapositives.tex

watch:
	while true ; do inotifywait -qe close_write $(LATEX); $(MAKE) ; done

clean:
	rm -f *.log *.aux *.out *.bbl *.blg
