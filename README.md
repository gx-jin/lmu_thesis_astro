# LMU Astrophysics Thesis Template

A LaTeX template for LMU astrophysics dissertations (book class). Includes bilingual cover layout and ADS journal macros.

## Structure
- `diss.tex` — main document, set your title page info in the `\LMUTitle` command.
- `chapter_01.tex`, `chapter_02.tex`, ... — content chapters.
- `abstract.tex`, `acknowledgments.tex`, `appendix.tex`, `cv.tex`, `bibliography.tex` — front/back matter.
- `literature.bib` — BibTeX database.
- `jkthesis.bst` — bibliography style.
- `siegel.pdf` — LMU seal for the cover page.

## Title Page Fields
Edit in `diss.tex` inside `\LMUTitle{...}`:
1. Thesis title (line break allowed with `\\`)
2. Author name
3. Place of birth
4. Faculty name (e.g., `Fakultät für Physik`)
5. Place and year of creation (e.g., `Munich 20XX`)
6. Submission date
7. First reviewer
8. Second reviewer
9. Oral examination date

## Build
Using latexmk (honors `.latexmkrc` and writes outputs to `build/`):
```powershell
latexmk -pdf diss.tex
```

Manual pdflatex/bibtex sequence:
```powershell
pdflatex diss.tex
bibtex diss
pdflatex diss.tex
pdflatex diss.tex
```

## VS Code
- Uses `.vscode/settings.json` to place outputs in `build/` when compiling with LaTeX Workshop.
- Compile: `Ctrl+Alt+B`; Preview: `Ctrl+Alt+V` (default LaTeX Workshop shortcuts).

## Notes
- Cover text remains in German per LMU requirements; body is English-ready.
- ADS journal macros are defined in `diss.tex` for common astronomy journals (ApJ, MNRAS, A&A, ARA&A, PASP, PASJ, etc.).
