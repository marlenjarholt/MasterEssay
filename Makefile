srcfile = master
pdf = $(srcfile).pdf
dir = src
bib = bibliography.bib

all: $(pdf)

$(pdf): $(src)/$(srcfile).txt/$(bib)
	cd $(src)
	latexmk -pdf -use-make $(srcfile)
	mv $(pdf) ..

clean:
	rm $(pdf)
	cd $(src)
	latexmk -CA 
	rm $(srcfile).bbl $(srcfile).run.xml