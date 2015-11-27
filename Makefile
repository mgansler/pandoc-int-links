all:
	pandoc after.md -t latex -o after.tex
	pandoc -s -F pandoc-citeproc test.md -t latex -o test.tex -A after.tex --metadata link-citations --bibliography bib.bib
	pandoc -s -F pandoc-citeproc test.md -o test.pdf -A after.tex --metadata link-citations --bibliography bib.bib
	rm after.tex

clean:
	rm -f test.pdf test.tex
