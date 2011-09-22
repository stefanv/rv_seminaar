.PHONY: all final clean

all: rv_seminaar.bbl
	pdflatex rv_seminaar.tex
	bibtex rv_seminaar

rv_seminaar.bbl:
	pdflatex rv_seminaar.tex
	bibtex rv_seminaar
	pdflatex rv_seminaar.tex
	pdflatex rv_seminaar.tex

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.pdf

