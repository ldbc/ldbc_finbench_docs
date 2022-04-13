MAIN_TEX_NAME=ldbc-finbench-specification
DOCUMENT=${MAIN_TEX_NAME}.tex

all: gen_card gen_pdf
	echo "======================"
	ls *.pdf

remake: clean gen_card gen_pdf

gen_pdf:
	latexmk -pdf --interaction=batchmode ${DOCUMENT}

gen_card: $(wildcard query-specifications/*.yaml)
	./generate-tex.py

clean: clean_card
	rm -f *.aux *.dvi *.thm *.lof *.log *.lot *.fls *.out *.toc *.bbl *.blg *.fdb_latexmk *.bcf *.pdf *.run.xml *.synctex.gz

clean_card:
	rm -f query-cards/*
