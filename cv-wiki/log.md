# Log

Append-only. Most recent first.

## [2026-09-04] edit | Major master refresh

- Headline: removed "@ Deskree Technologies" — was misleading (role ended 02/2026); replaced with "Platform & DevOps Engineer | 9x AWS Certified | AWS Community Builder"
- Summary: cut three-number hedge (3 yrs / 4+ yrs AWS / 4-yr Builder); now leads with 9x certified + 4-year Builder
- Experience: added "Freelance Platform & DevOps Engineer | Upwork | 02/2026–Present" as current entry; 2 bullets (EKS architecture engagement, GitHub Actions/Helm/Kustomize/SNS pipeline work)
- Deskree: dropped IAM bullet (6→5 bullets) to fit page budget
- Genese: swapped duplicate 99.9% uptime → "primary AWS engineer across 10+ client accounts"
- Projects: added openclaw-lightsail-setup (Terraform, Ansible, Bedrock, Lightsail; Summit 2026 demo); removed aws-cdk-chatbot; Summit projects now listed first
- Summit 2026 bullet: real talk title + "~200 attendees; Community Lounge sessions ranked highest CSAT at Summit" (accurate — 5 lounge talks collectively earned that distinction, not claimed as sole highest)

## [2026-07-29] tailoring | Jane — Cloud Security Engineer
- Created companies/jane/ with jd.md, resume.tex, jane-cv.pdf
- Title override: Cloud Security Engineer
- Summary: security variant — leads with Security Hub/GuardDuty, SOC 2, AI security
- Deskree: security variant — CSPM, secrets (Macie/GitHub scanning/Secrets Manager), Trivy+tfsec CI/CD gates, EKS RBAC/network policies/Helm hardening, Tetrix AI MCP auth, SOC 2+incident response
- Genese: security variant — IAM audits and WA Reviews lead
- Skills: security first — Security Hub, GuardDuty, Macie, Trivy, Brakeman, tfsec, GitHub secret scanning
- Projects: bedrock-agents-collab with IAM scoping note, k8s-gitops with RBAC note, railsflow-ci with Brakeman, aws-cdk-chatbot with least-privilege note

## [2026-06-30] edit | FIFA World Cup 2026 volunteering added
- Added bullet to Community & Accomplishments: FIFA World Cup 2026 Volunteer, Pre-Match Ceremonies, Toronto Stadium, Jan--Jul 2026

## [2026-06-13] structure | Per-company folder system added
- Created `companies/` directory with `README.md`
- Each company gets its own folder: `jd.md`, `resume.tex`, `<company>-cv.pdf`
- Master `resume.tex` at root is source of truth — never tailor it directly
- Updated `CLAUDE.md` and `cv-wiki/state.md` with new structure

## [2026-06-13] setup | Wiki created
- Created cv-wiki with index, state, decisions, variants, companies, log pages
- CV is at current state: 2-page XeLaTeX, Georgia font, Lucas Swanson layout

## [2026-06-06] edit | ATS keyword pass
- Added Linux, ECS, alerting to Skills section
- Each skill category given its own line
- raggedbottom added to fix page 2 spacing

## [2026-06-05] edit | Major rebuild
- Switched from WeasyPrint HTML/CSS to XeLaTeX with fontspec
- Adopted Lucas Swanson layout spec exactly (margins, font sizes, bullets)
- Regenerated preview image for blog (later reverted — wrong project)
- Added Projects section (4 projects from GitHub)
- Removed rubyrana (vibe-coded)
- Summary tightened to 2 sentences
- ABW Grant given own bold line
- Practitioner certs removed
- All 9 AWS certs + dates added
- Contact split to two lines
- Relocation OK added
- Name set to all caps

## [2026-06-05] init | Project started
- Extracted CV content from Ajay_Dhungel_Resume (3).pdf
- Created cv-data.json with variants
- Created WeasyPrint render pipeline (render.py, templates/cv.html)
- Created configs/example.json
