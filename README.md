# cv-tailor

An AI-native CV tailoring pipeline. Drop in a job description — the AI reads it, makes tailoring decisions, writes a company-specific LaTeX file, and compiles a submission-ready PDF. One JD in, one PDF out.

Most resume tools do keyword stuffing. This one reasons about the match: what to emphasize, what to cut, which framing fits the role.

---

## How it works

The master resume lives in `resume.tex` — all content, never submitted directly. When targeting a role, Claude (via Claude Code) reads the JD, compares it against the variant library in `cv-data.json`, and produces a tailored copy:

- Adjusts the title and summary to match the role
- Swaps variant bullets across experience entries
- Reorders skills to lead with what matters for this JD
- Trims to one page if needed

The tailored `.tex` compiles to PDF with XeLaTeX. The master stays untouched.

---

## Main files

| File | Purpose |
|---|---|
| `resume.tex` | Master resume — single source of truth, never submitted directly |
| `resume.cls` | Layout class — Lucas Swanson spec, XeLaTeX, Georgia font |
| `cv-data.json` | All content with named variant bullets per section |
| `CLAUDE.md` | AI instructions — tells Claude how to run the tailoring workflow |
| `cv-wiki/` | Persistent state: current CV snapshot, decision log, application tracker |

---

## Workflow

```
1. Paste a job description
2. Claude reads the JD and cv-data.json
3. Claude creates companies/<company>/resume.tex — tailored copy
4. Compiles to PDF with XeLaTeX
5. Wiki is updated: log entry, application status, any new decisions
```

Compile command:
```bash
/Library/TeX/texbin/xelatex resume.tex
```

---

## The AI layer

The intelligence is in `CLAUDE.md` and `cv-wiki/`. `CLAUDE.md` defines the workflow and constraints. `cv-wiki/` gives Claude persistent memory across sessions — current CV state, past decisions, what was sent where.

Claude carries the tailoring decisions. You stay in the loop — every tailored copy is reviewed before it goes anywhere. The AI drafts, you approve. Nothing is submitted without a human reading it first.

---

## Requirements

- [Claude Code](https://claude.ai/code)
- XeLaTeX (`brew install --cask mactex` on macOS)
- Georgia font (ships with macOS)
