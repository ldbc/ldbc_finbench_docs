#!/bin/bash
set -x

PNG_DIR=$1

cd $PNG_DIR
for f in *.png; do
	g=${f%.*}
	rname=${PNG_DIR}-${g#Slide}
	# convert -quality 100 $f ${rname}.pdf
	# pdfcrop ${rname}.pdf && mv ${rname}-crop.pdf ${rname}.pdf
	convert -quality 100 $f -trim ${rname}.png
done
