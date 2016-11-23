#!/bin/sh
source texlive.env
mainname=$(basename $1 .tex)

echo "xelatex $mainname.tex"
echo "okular $mainname.pdf"

xelatex --output-directory=/tmp/ $mainname.tex && okular /tmp/$mainname.pdf

