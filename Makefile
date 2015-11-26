all:
	pandoc after.md -t latex -o after.tex
	pandoc -s test.md -t latex -o test.tex -A after.tex --metadata link-citations
	pandoc -s test.md -o test.pdf -A after.tex --metadata link-citations
	rm after.tex

clean:
	rm -f test.pdf test.tex
