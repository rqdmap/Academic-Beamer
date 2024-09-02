build:
	xelatex -synctex=1 -interaction=nostopmode  main
	xelatex -synctex=1 -interaction=nostopmode  main

deploy:
	xelatex -synctex=1 -interaction=batchmode main
	xelatex -synctex=1 -interaction=batchmode main
	cp main.pdf Main-$(date +%s).pdf

clean:
	rm -f *.toc *.bbl *.blg *.out *.aux *.log *.bak *.thm *.synctex.gz *.fdb_latexmk *.fls *.glo *.gls *.idx *.ilg *.ind *.nav *.snm *.xdv *.vrb
