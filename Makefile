.PHONY: clean
.SUFFIXES:

COMP = mdbg
OUT = compte_rendu
TITLE = "SIG 1"
PACKAGE = "{{MyPack2}}"
AUTHOR = "Binôme A11 \\\\ SIMON Léo, LEVY--FALK Hugo"
DOCUMENTCLASS = "article"

all:
	$(COMP) $(OUT).mdbg --title $(TITLE) --packages $(PACKAGE) --date \\today --documentclass $(DOCUMENTCLASS) --author $(AUTHOR)
	lualatex --shell-escape $(OUT).tex
	lualatex --shell-escape $(OUT).tex

clean:
	rm $(OUT).aux $(OUT).log $(OUT).out $(OUT).toc
	rm $(OUT).tex
	rm images/*-eps-converted-to.pdf

mrproper: clean
	rm $(OUT).pdf
