# Design & Content Decisions

## Layout
- **Template:** Custom resume.cls — clean, content-dense layout optimised for readability and ATS parsing
- **Font:** Georgia instead of Cambria — Cambria not on macOS, Georgia is same designer (Matthew Carter), near-identical letterforms
- **Two pages:** Full content warrants two pages; one-page versions to be generated per-company via config + bullet limits
- **XeLaTeX over pdfLaTeX:** Needed for fontspec to load system fonts (Georgia)
- **WeasyPrint HTML/CSS renderer kept:** Backup option, not primary workflow

## Content
- **Swostech removed:** Only 2 jobs on CV — cleaner, avoids diluting senior signal with support-level role
- **References removed:** Not needed, takes up space
- **Practitioner certs removed:** AI Practitioner, Cloud Practitioner too foundational for DevOps/Platform Engineer roles
- **Experience before Skills:** Article advice — strong experience should lead
- **ABW Grant on own line:** High-signal award, deserves its own entry not buried in a bullet
- **Title is dynamic:** Set per-company config, default is "DevOps Engineer"
- **rubyrana removed from projects:** Vibe-coded, can't speak to it confidently in interviews
- **4+ years AWS exposure in summary:** Actual exposure since 2022; work experience is 3 years professional

## Tailoring workflow (planned)
- Paste JD → I draft tailored `.tex` with variant bullets, reordered skills, adjusted title
- Compile → rename PDF with company + date
- Log entry added to [[companies]]
