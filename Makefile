.PHONY: all clean veryclean

all: notes.pdf

notes.pdf: *.tex
	pdflatex -interaction nonstopmode notes.tex

clean:
	rm -f *.aux *.log

veryclean: clean
	rm -f *.pdf

