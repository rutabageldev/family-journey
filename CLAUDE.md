# family-journey — agent conventions

This repo is the **source of truth** for the Family OS product: vision, strategy, functional and technical expectations, architectural decisions, and implementation handoffs. Any agent (discovery session, scheduled maintenance, or coding agent on the utility node) reads this file first.

## Ground rules
- `main` is truth. A doc is only authoritative once merged and its frontmatter `status` is `accepted`.
- Scoping: one session = one document or one decision. Do not sprawl across unrelated docs in a single session.
- Every doc under `docs/` has YAML frontmatter (see `templates/`). Never strip or hand-edit `INDEX.md`; regenerate it with `python3 scripts/build-index.py`.
- ADRs are immutable once `accepted`. To change a decision, write a new ADR that `supersedes` the old one and flip the old one to `superseded`.
- Prefer short docs that link to each other over long docs. Use relative links and the doc `id` in `depends_on`.
- No PII about family members beyond first names. No credentials, hostnames, or secrets in this repo.

## Commit model
- Scaffolding, index regeneration, status flips, typo fixes → commit directly to `main`.
- New or substantively revised docs → branch `draft/<id>-<slug>`, open a PR, fill the PR template. Mike reviews and merges.
- Conventional-commit style subjects: `docs(adr): ADR-0003 event storage`, `chore(index): regenerate`.

## Layout
| Path | Holds | Template |
|---|---|---|
| `docs/00-vision.md` | Why this product exists, who it's for, what success looks like | `templates/strategy.md` |
| `docs/10-strategy/` | Roadmap, principles, non-goals, sequencing | `templates/strategy.md` |
| `docs/20-product/` | Personas, jobs-to-be-done, one functional spec per capability | `templates/spec.md` |
| `docs/30-technical/` | System-level expectations, constraints, interfaces, quality attributes | `templates/spec.md` |
| `docs/40-adr/` | `ADR-NNNN-<slug>.md`, one decision each | `templates/adr.md` |
| `docs/50-handoff/` | Frozen implementation briefs for coding agents | `templates/brief.md` |
| `INDEX.md` | Generated catalogue of every doc, status, dependencies | — |
| `claude/` | Project instructions and prompts for Claude sessions | — |

## Dispatch
Work items are GitHub issues using the `dispatch` template. A session picks up one issue, does the work, and references the issue in its PR (`Closes #N`).

## Status vocabulary
`draft` → `review` → `accepted` → `superseded` (ADRs) / `retired` (everything else).

## For coding agents (utility node)
1. Read `INDEX.md`, then only the `accepted` docs under `docs/50-handoff/` assigned to you.
2. Each brief lists the ADRs and specs it depends on; read those, nothing else, unless the brief says otherwise.
3. If the brief is ambiguous or contradicts an ADR, stop and open an issue with the `question` label rather than guessing.
