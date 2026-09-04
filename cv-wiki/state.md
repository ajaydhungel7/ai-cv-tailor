# Current CV State

Last updated: 2026-09-04

## File structure
- `resume.tex` + `resume.cls` — master source, XeLaTeX, Georgia font, Lucas Swanson layout spec
- `companies/<name>/resume.tex` — tailored copy per application
- `companies/<name>/jd.md` — job description
- `companies/<name>/<name>-cv.pdf` — compiled output

## Layout spec (from Lucas Swanson reference)
- Font: Georgia (Cambria substitute — same designer, Matthew Carter)
- Name: 20pt, all caps
- Subtitle tagline: 12.9pt
- Contact: 11pt, en-dash separators
- Section headers: 12pt bold, horizontal rule underneath
- Body: 10.5pt / 13.3pt leading, single spaced
- Bullets: filled squares
- Margins: 0.75L / 0.72R / 0.99T / 0.32B in
- Pages: 2

## Sections (in order)
1. **Header** — name, tagline, links, phone/location
2. **Professional Summary** — 2 sentences, tight
3. **Experience** — Freelance (02/2026–Present), Deskree, Genese (Swostech removed)
4. **Projects** — 4 projects from GitHub
5. **Education** — Lambton, Tribhuvan
6. **Technical Skills** — 7 categories, one per line
7. **Certifications** — 8 certs (practitioner level removed)
8. **Community & Accomplishments** — ABW Grant on own bold line, Summit talks

## Personal info
- Name: Ajay Dhungel
- Title (default): Platform & DevOps Engineer
- Location: Toronto, ON (Relocation OK)
- Email: dhungelajay@gmail.com
- LinkedIn: linkedin.com/in/ajaydhungel
- GitHub: github.com/ajaydhungel7
- Blog: ajaydhungel.blog

## Experience on CV
| Role | Company | Dates |
|---|---|---|
| Freelance Platform & DevOps Engineer | Upwork | 02/2026 -- Present |
| DevOps Engineer | Deskree Technologies Inc | 03/2025 -- 02/2026 |
| Cloud Engineer | Genese Solution | 03/2022 -- 12/2023 |

⚠️ Gap: 12/2023 -- 03/2025 (15 months) — covered by Lambton College PG cert but not explicitly called out

## Projects on CV
| Project | Stack | Notes |
|---|---|---|
| openclaw-lightsail-setup | Terraform, Ansible, Bedrock, Lightsail | AWS Summit 2026 demo; personal AI assistant |
| bedrock-agents-collab | Terraform, Bedrock, Python | AWS Summit 2025 demo |
| k8s-gitops | Terraform, Terragrunt, ArgoCD, Jenkins, EKS | Full GitOps lifecycle |
| railsflow-ci | GitHub Actions, EKS, Helm, Terragrunt, Ruby | CI/CD for Rails |

Removed: aws-cdk-chatbot (dropped to make room; weakest project entry)

## Certifications on CV (8)
- AWS DevOps Engineer — Professional (Sep 2024)
- AWS Solutions Architect — Professional (Jan 2026)
- AWS Generative AI Developer — Professional (Jan 2026)
- AWS CloudOps Engineer — Associate (Oct 2025)
- AWS Developer — Associate (Sep 2025)
- AWS Machine Learning Engineer — Associate (Feb 2025)
- AWS Solutions Architect — Associate (Jun 2023)
- HashiCorp Terraform Associate (003) (Dec 2023)

Removed: AI Practitioner, Cloud Practitioner (too foundational for target roles)

## ATS status
- `pdftotext` parse is clean — all sections, titles, dates, keywords extract correctly
- Pipe separators in experience header may confuse very old ATS parsers (low risk)
- Keywords present: Terraform, Terragrunt, Kubernetes, EKS, ArgoCD, GitHub Actions, Jenkins, CloudWatch, Prometheus, SOC 2, IAM, Docker, Linux, ECS
