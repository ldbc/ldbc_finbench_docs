#!/bin/bash
set -x

PNG_DIR=$1

cd $PNG_DIR
for f in *.png; do
    g=${f%.*}
    idx=${g#Slide}
    if [ "$idx" -lt "10" ]; then
        idx=0${idx}
    fi
    rname=${PNG_DIR}-${idx}
    # echo $rname
    # pdfcrop ${rname}.pdf && mv ${rname}-crop.pdf ${rname}.pdf
    convert -quality 100 $f -trim ${rname}.png
done