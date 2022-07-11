## About this directory

This directory contains required pattern figures in query cards.

## Manipulation recommendation

You can see corresponding powerpoint files in this directory. You can generate the figures by these steps.

### Step 1: Export pngs from powerpoint

open the slides and export them to pngs for every slide. It may goes like: File -> Export -> Choose png.

For example, the transaction-read.pptx will produce a new directory, transaction-read, containing every slide png.

For high resolution, remember to adjust the height and width to 1920x1080.

### Step 2: Use crop.sh

The bash script will do these things:
- convert png to pdf using imagemagick(on MacOS)
- crop pdf using pdfcrop
- rename

### Step 3: Move files

Move the cropped pdf from subdirectory to current directory.

