#!/usr/bin/env bash
set -euo pipefail

# Ask for the LaTeX file name
read -p "Enter the main LaTeX file name (with .tex): " MAIN_TEX

# Check if the file exists
if [[ ! -f "$MAIN_TEX" ]]; then
    echo "Error: File '$MAIN_TEX' does not exist."
    exit 1
fi

echo "Step 1: Run pdflatex to generate .asy files..."
pdflatex -shell-escape "$MAIN_TEX"

echo "Step 2: Compile all .asy figures..."
for f in ${MAIN_TEX%.tex}-*.asy; do
    if [[ -f "$f" ]]; then
        echo "Compiling $f ..."
        asy -f pdf -tex pdflatex "$f"
    fi
done

echo "Step 3: Run pdflatex again to include PDFs..."
pdflatex -shell-escape "$MAIN_TEX"

echo "Step 4: Optional second LaTeX pass for cross-references..."
pdflatex -shell-escape "$MAIN_TEX"

echo "Build complete! Output PDF: ${MAIN_TEX%.tex}.pdf"
