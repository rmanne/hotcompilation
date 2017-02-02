.PHONY: all clean veryclean

all: notes.pdf
	open notes.pdf

notes.pdf: *.tex
	pdflatex -interaction nonstopmode $<

clean:
	rm -f *.aux *.log

veryclean: clean
	rm -f *.pdf

