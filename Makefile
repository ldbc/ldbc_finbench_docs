MAIN_TEX_NAME=ldbc-finbench-specification
DOCUMENT=${MAIN_TEX_NAME}.tex

all: remake
	echo "======================"
	ls *.pdf

remake: clean_card gen_card rebuild

rebuild: clean_temp gen_pdf

clean_card:
	rm -f query-cards/*

gen_card: $(wildcard query-specifications/*.yaml)
	./generate-tex.py

clean_temp: 
	rm -f *.aux *.dvi *.thm *.lof *.log *.lot *.fls *.out *.toc *.bbl *.blg *.fdb_latexmk *.bcf *.pdf *.run.xml *.synctex.gz

gen_pdf:
	latexmk -pdf -f --interaction=batchmode ${DOCUMENT}
