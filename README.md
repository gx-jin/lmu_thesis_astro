# LMU Astrophysics Thesis Template

A modern LaTeX template for LMU München astrophysics dissertations, based on the original
2002 template by Robert Dahlke & Sigmund Stintzing, with typography and citation improvements.

## Features

- **Linux Libertine** font with matching `newtxmath` for equations
- **Sonny** chapter style (`fncychap`) — large chapter number with horizontal rule
- **AAS author–year** citations via `natbib` + `aasjournalv7.bst`
- Color hyperlinks (links, citations, URLs each with distinct color)
- `microtype` for improved justification
- `booktabs` table style + `caption` package for professional figure/table captions
- 1.3× line spacing
- Cover pages remain in standard LMU / Computer Modern format
- All build outputs go to `build/` (via `latexmkrc`)

## Quick Start

1. Fill in your details in `diss.tex` inside `\LMUTitle{...}`:

```latex
\LMUTitle
    {Your Thesis Title}          % #1 Title
    {Firstname Lastname}         % #2 Author
    {City, Country}              % #3 Place of birth
    {Fakult\"at f\"ur Physik}    % #4 Faculty
    {Munich 20XX}                % #5 Place and year
    {DD. Month YYYY}             % #6 Submission date
    {Prof. Dr. First Reviewer}   % #7 First reviewer
    {Prof. Dr. Second Reviewer}  % #8 Second reviewer
    {DD. Month YYYY}             % #9 Oral examination date
```

2. Add chapters by creating `chapter_03.tex`, etc. and uncommenting the `\include` lines in `diss.tex`.

3. Put all figures in `images/` and reference by filename only:
```latex
\includegraphics[width=\textwidth]{my_figure.pdf}
```

4. Add references to `literature.bib`. Citation commands:
   - `\citep{key}` → `(Author et al. 2020)`
   - `\citet{key}` → `Author et al. (2020)`
   - `\citep[e.g.,][]{key}` → `(e.g., Author et al. 2020)`

## Project Structure

```
diss.tex              — main document (packages, cover, document flow)
chapter_01.tex        — Chapter 1: Introduction (placeholder)
chapter_02.tex        — Chapter 2: Example chapter with equations, table, figure
abstract.tex          — Abstract
acknowledgments.tex   — Acknowledgments
appendix.tex          — Appendix
bibliography.tex      — \bibliographystyle + \bibliography
cv.tex                — Curriculum Vitae
literature.bib        — BibTeX database
bibstyle/             — .bst bibliography style files
  aasjournalv7.bst    — AAS journal style (active; set in bibliography.tex)
images/               — All figures (referenced by filename only)
build/                — Compiler output (PDF, aux, log — gitignored)
.latexmkrc            — latexmk config: outputs to build/, finds bibstyle/
.gitignore            — Ignores build/ and LaTeX intermediate files
```

## Build

Using `latexmk` (recommended — handles full pdflatex + bibtex sequence automatically):
```bash
latexmk -pdf diss.tex
```

Clean intermediate files:
```bash
latexmk -c diss.tex   # keep PDF
latexmk -C diss.tex   # remove PDF too
```

## Switching Bibliography Style

Drop any `.bst` file into `bibstyle/` and update one line in `bibliography.tex`:
```latex
\bibliographystyle{your_style_name}
```

## Requirements

Standard TeX Live or MiKTeX installation with the following packages
(all available on CTAN / Overleaf):
`libertine`, `newtxmath`, `microtype`, `setspace`, `fncychap`, `booktabs`,
`caption`, `xcolor`, `hyperref`, `natbib`, `amsmath`, `amssymb`, `fancyhdr`, `graphicx`.

## License

Original template © 2002 Robert Dahlke & Sigmund Stintzing.
Modifications © 2026 Gaoxiang Jin. Free to use and adapt.
