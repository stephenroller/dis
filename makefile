all:
	pdflatex main
	pdflatex main
	bibtex main
	bibtex main
	pdflatex main
	pdflatex main

draft:
	pdflatex draft
	pdflatex draft
	bibtex draft
	bibtex draft
	pdflatex draft
	pdflatex draft

fastdraft:
	pdflatex -interaction nonstopmode -file-line-error draft

clean:
	( echo rm -f ` cat .gitignore ` | bash ) || true

