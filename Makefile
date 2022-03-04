LATEX = latexmk -pdf --shell-escape

default: test.pdf

test.pdf: Makefile *.tex references.bib oxycomps.sty
	$(LATEX) LitRev

clean:
	rm -f *-blx.bib *.4ct *.4og *.4tc *.aux *.bbl *.bcf *.blg *.doc *.dvi *.fdb_latexmk *.fls *.idv *.lg *.log *.nav *.odt *.out *.rtf *.snm *.tmp *.toc *.vrb *.xml *.xref $(outputs)