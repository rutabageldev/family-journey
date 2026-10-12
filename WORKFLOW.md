---
id: WORKFLOW
type: process
title: How this effort is run
status: accepted
updated: 2026-10-12
depends_on: []
---
# How this effort is run

## Source of truth
The GitHub repo `rutabageldev/family-journey`, branch `main`. Local clones (PC at `C:\opt\family-journey`) are mirrors. Chats are disposable; merged files are the record.

## Entry points
| Where | How |
|---|---|
| Phone / web | Start a Claude session on the repo (GitHub link). "Pick up issue #N" or "Draft ADR-00NN: <topic>". Review the PR on the phone. |
| Desktop app | Same, or a session linked to the local clone for hands-on editing alongside Obsidian/IDE. Commits here land on a branch and are pushed by Mike. |
| Scheduled task | Weekly: regenerate `INDEX.md`, flag docs stuck in `review`, open issues for contradictions. |
| Utility node | After discovery ends: receives a file drop of the accepted docs in the target repo, reads the handoff document, writes an implementation plan and roadmap, then builds one milestone at a time. |

One claude.ai Project ("Family Journey") holds the standing instructions in `claude/project-instructions.md`. Every discovery chat is opened inside it, one chat per document or decision.

## Lifecycle
1. **Capture** — drop a one-liner in `BACKLOG.md` from any device.
1. **Dispatch** — promote it to a GitHub issue with the `dispatch` template: target doc, question to answer, what it unblocks. The backlog line becomes `#N`.
2. **Draft** — one session per issue. Reads `CLAUDE.md` and the docs in `depends_on`, drafts on `draft/<id>-<slug>`, opens a PR.
3. **Review** — Mike reviews the PR from any device; revisions go back to the same session or a fresh one referencing the PR.
4. **Merge** — the PR sets `status: accepted`, and merging to `main` is the acceptance. The `index` workflow regenerates `INDEX.md`.
5. **Maintain** — scheduled task keeps the index honest and surfaces gaps.
6. **Hand off** — the handoff document in `docs/50-handoff/` is written last. When discovery has ended ([discovery outcomes](docs/10-strategy/discovery-outcomes.md)), the accepted docs are dropped into the target repo and the coding agent starts from the handoff document. Nothing is handed to a coding agent before then. Sessions that help write docs are unaffected.

## Decision log for this process
- 2026-10-11: GitHub repo as source of truth (not the OneDrive folder); local clone moved to `C:\opt\family-journey`.
- 2026-10-11: `main` is PR-only for everyone; `INDEX.md` is bot-maintained via the `index` workflow (the only bypass).
- 2026-10-11: `BACKLOG.md` is the parking lot, GitHub issues are the shaped queue; backlog lines get promoted to issues.
- 2026-10-12: Handoff is one file drop with a single handoff document, after discovery ends. No per-capability briefs; the coding agent writes the implementation plan and roadmap.
