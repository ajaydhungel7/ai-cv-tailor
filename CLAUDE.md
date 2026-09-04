# CLAUDE.md — CV Tailoring Project

## First thing to do in every session
Read `cv-wiki/state.md` first. It has the full current state of the CV.
Then check `cv-wiki/log.md` for what changed recently.
Then check `cv-wiki/companies.md` for application status.

## Last thing to do in every session
Run `/update-obs` to sync the wiki before ending the session.

## What this project is
A CV tailoring workflow for Ajay Dhungel. The goal:
1. Maintain a master `resume.tex` with all content
2. Tailor per job description — swap variants, adjust title, reorder bullets
3. Compile to PDF with XeLaTeX
4. Track applications in `cv-wiki/companies.md`

## How to compile
```bash
/Library/TeX/texbin/xelatex resume.tex
```
Output: `resume.pdf` in the vault root.

To create a submission copy:
```bash
cp "resume.pdf" "Ajay Dhungel - MMM YY Resume (Two-Page).pdf"
```

## File structure
```
obsidian/
├── CLAUDE.md
├── resume.tex              ← master CV — never submitted directly, never tailor this
├── resume.cls              ← layout class — only touch for structural changes
├── cv-data.json            ← all content with variants (reference)
├── cv-wiki/                ← Claude's managed memory
└── companies/
    └── company-name/
        ├── jd.md           ← job description
        ├── resume.tex      ← tailored copy of master
        └── company-name-cv.pdf  ← compiled output
```

## Tailoring workflow (per JD)
1. User pastes JD
2. Read JD, compare against `cv-wiki/variants.md`
3. Create `companies/<company-name>/` folder
4. Save JD to `companies/<company-name>/jd.md`
5. Copy master `resume.tex` to `companies/<company-name>/resume.tex`
6. Tailor: adjust title, swap variant bullets, reorder skills, trim bullets if 1-page needed
7. Compile from inside the company folder:
   ```bash
   cd companies/<company-name>
   /Library/TeX/texbin/xelatex resume.tex
   mv resume.pdf <company-name>-cv.pdf
   ```
8. Update `companies/README.md` applications table
9. Add entry to `cv-wiki/companies.md`
10. Append to `cv-wiki/log.md`

## Master resume rule
`resume.tex` at root is the single source of truth. All improvements go here first.
Company folders get a copy — never edit the master for tailoring.

## Wiki maintenance rules
- Update `cv-wiki/state.md` whenever the CV changes
- Append to `cv-wiki/log.md` for every meaningful change (most recent first)
- Update `cv-wiki/companies.md` when a new application is started or status changes
- Update `cv-wiki/decisions.md` when a new design/content decision is made
- Remove stale information — don't let pages drift from reality

## Key decisions already made (don't re-litigate)
- Font: Georgia (Cambria not on macOS)
- XeLaTeX, not pdfLaTeX — needed for fontspec
- Two pages — one page generated per-company via bullet limits if needed
- Swostech removed from CV
- References removed
- Practitioner-level certs removed (AI Practitioner, Cloud Practitioner)
- Experience before Skills (per article advice)
- Title is dynamic — set per application
- rubyrana removed from projects (vibe-coded, can't defend in interview)

## Ajay's background (quick ref)
- 3 years professional experience, 4+ years AWS exposure (since 2022)
- AWS Community Builder 4 years: 2023, 2024, 2025, 2026
- All Builders Welcome Grant recipient 2025
- Speaker: AWS Summit Toronto 2025 + 2026
- 9 AWS certs + HashiCorp Terraform Associate
- Agentic AI experience on Amazon Bedrock
- Based in Toronto, open to relocation
