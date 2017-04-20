all: draft

thesis:
	pdflatex main
	pdflatex main
	bibtex main
	bibtex main
	pdflatex main
	pdflatex main

binding:
	pdflatex binding
	pdflatex binding
	bibtex binding
	bibtex binding
	pdflatex binding
	pdflatex binding


bindpreview:
	max_print_line=2000 latexmk -verbose -pdf -file-line-error -interaction=nonstopmode -pvc -e '$$pdf_previewer = "/Applications/Skim.app/Contents/SharedSupport/displayline"' 'binding.tex'

clean:
	( echo rm -f ` cat .gitignore ` | bash ) || true

preview:
	max_print_line=2000 latexmk -verbose -pdf -file-line-error -interaction=nonstopmode -pvc -e '$$pdf_previewer = "/Applications/Skim.app/Contents/SharedSupport/displayline"' 'main.tex'
