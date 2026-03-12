## Latex pipeline with watchdog
    install latex:
    ```
    # macOS
    brew install texlive entr

    # Ubuntu/Debian
    sudo apt install texlive-full entr
    ```

    install latexmk: https://mgeier.github.io/latexmk.html

### Setup the `.latexmkrc` in your project root:
    
    `.latexmkrc` in your project root:

    ```
    # .latexmkrc
    $pdf_mode = 1;                # Force PDF output
    $postscript_mode = 0;         # Disable PS
    $dvi_mode = 0;                # Disable DVI

    # Use Biber for bibliographies (common in modern research)
    $biber = 'biber %O %S';

    # Clean up auxiliary files automatically after a build
    $cleanup_includes_generated = 1;
    @generated_exts = (@generated_exts, 'synctex.gz', 'bbl', 'bcf', 'run.xml');
    ```


### Set up the watchdog with `entr`
    
    See the `./watchdog.sh` file for details

    `chmod +x ./watchdog.sh`

    start the watchdog:
    `./watchdog.sh`



