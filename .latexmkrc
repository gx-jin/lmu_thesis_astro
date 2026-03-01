# Send all outputs (PDF, aux, log, etc.) to build/
$out_dir = "build";
$aux_dir = "build";
$pdf_mode = 1;  # produce PDF directly

# Allow BibTeX to find .bst files in bibstyle/
# ensure_path handles path separators on both Windows (;) and Unix (:)
ensure_path('BSTINPUTS', './bibstyle');
