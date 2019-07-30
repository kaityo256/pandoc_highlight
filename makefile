PDF=pygments.pdf kate.pdf monochrome.pdf espresso.pdf zenburn.pdf haddock.pdf tango.pdf breezedark.pdf
PANDOCOPT=--latex-engine=lualatex -V documentclass=ltjarticle -V geometry:margin=1in

all: $(PDF)

%.pdf: test.md
	pandoc $< -s -o $@ --highlight-style=$* $(PANDOCOPT)

.PHONY: clean

clean:
	rm -f $(PDF)
