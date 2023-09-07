@default_files = ("main.tex");
$aux_dir = "build";

# Use pdflatex
$pdf_mode = 1;

# No postscript or dvi
$postscript_mode = $dvi_mode = 0;

# Generate .fls File to keep track of files
$recorder = 1;

# Clean .bbl files
$bibtex_use = 2;

# Generated extensions to be cleaned
$clean_ext="lof lot run.xml tdo"
