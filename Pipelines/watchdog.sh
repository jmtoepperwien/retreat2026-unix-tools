#!/bin/bash

# Configuration
MAIN="manuscript"
TEMP_EXTS=("aux" "log" "out" "toc" "fdb_latexmk" "fls" "synctex.gz" "bbl" "blg" "bcf" "run.xml")

# --- Cleanup Function ---
cleanup() {
    echo -e "\n[Watchdog] Cleaning up auxiliary files..."
    for ext in "${TEMP_EXTS[@]}"; do
        rm -f *."$ext"
    done
    echo "[Watchdog] Workspace clean. Goodbye!"
    exit 0
}

# Trap Ctrl+C (SIGINT) and call the cleanup function
trap cleanup SIGINT

echo "--------------------------------------------------"
echo " LIVE LATEX WATCHDOG ACTIVE "
echo " Watching for changes... Press Ctrl+C to stop/clean."
echo "--------------------------------------------------"

# The Pipeline
# -p: postpones the first execution until a file is actually saved
# -c: clears the terminal screen before each build for readability
find . -maxdepth 1 -name "*.tex" -o -name "*.bib" | \
entr -cp -s "latexmk -pdf $MAIN.tex && echo '✅ Build Success' || echo '❌ Build Failed'"
