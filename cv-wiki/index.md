# CV Wiki — Ajay Dhungel

This is Claude's managed memory for the CV tailoring project. Claude reads and updates these files every session. All files live in `cv-wiki/`.

## Pages

| File | What it covers |
|---|---|
| [[state]] | Current state of the CV — what's in it, what's decided |
| [[decisions]] | Design and content decisions made and why |
| [[variants]] | Available content variants per section |
| [[companies]] | Job applications — one entry per company, config + status |
| [[log]] | Append-only log of changes |

## Quick reference

- **Source file:** `resume.tex` + `resume.cls`
- **Compile:** `/Library/TeX/texbin/xelatex resume.tex`
- **Data:** `cv-data.json`
- **Output:** `resume.pdf` → rename to `Ajay Dhungel - MMM YY Resume (Two-Page).pdf`
