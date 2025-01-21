#!/bin/bash
set -e

# Create build directory
mkdir -p build

# Compile with lualatex
lualatex -output-directory=build main.tex
biber build/main
lualatex -output-directory=build main.tex
lualatex -output-directory=build main.tex

# Run mendex if .idx file exists
if [ -f build/main.idx ]; then
  mendex build/main
fi

# Final compile for index integration
lualatex -output-directory=build main.tex

# Delete auxiliary files
rm -f build/*.aux build/*.bbl build/*.bcf build/*.blg build/*.log build/*.run.xml build/*.toc build/*.out build/*.idx build/*.ilg build/*.ind build/*.lof build/*.lot build/*.xdy
