#!/bin/bash

mkdir -p build/chapters/

pdflatex -output-directory=build diploma.tex
bibtex build/diploma.aux
pdflatex -output-directory=build diploma.tex
pdflatex -output-directory=build diploma.tex

cp build/diploma.pdf .
