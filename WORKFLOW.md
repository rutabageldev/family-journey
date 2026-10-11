---
id: WORKFLOW
type: process
title: How this effort is run
status: accepted
updated: 2026-10-11
depends_on: []
---
# How this effort is run

## Source of truth
The GitHub repo `rutabageldev/family-journey`, branch `main`. Local clones (PC at `C:\opt\family-journey`, utility node) are mirrors. Chats are disposable; merged files are the record.

## Entry points
| Where | How |
|---|---|
| Phone / web | Start a Claude session on the repo (GitHub link). "Pick up issue #N" or "Draft ADR-00NN: <topic>". Review the PR on the phone. |
| Desktop app | Same, or a session linked to the local clone for hands-on editing alongside Obsidian/IDE. Commits here are pushed by Mike. |
| Scheduled task | Weekly: regenerate `INDEX.md`, flag docs stuck in `review`, list accepted specs with no handoff brief, open issues for contradictions. |
| Utility node | `git pull`, read `CLAUDE.md`, implement from `docs/50-handoff/`. |

One claude.ai Project ("Family Journey") holds the standing instructions in `claude/project-instructions.md`. Every discovery chat is opened inside it, one chat per document or decision.

## Lifecycle
1. **Dispatch** — open a GitHub issue with the `dispatch` template: target doc, question to answer, what it unblocks.
2. **Draft** — one session per issue. Reads `CLAUDE.md` and the docs in `depends_on`, drafts on `draft/<id>-<slug>`, opens a PR.
3. **Review** — Mike reviews the PR from any device; revisions go back to the same session or a fresh one referencing the PR.
4. **Merge** — merge to `main`; status flips to `accepted`; `INDEX.md` regenerated.
5. **Maintain** — scheduled task keeps the index honest and surfaces gaps.
6. **Hand off** — when a capability's spec and its ADRs are `accepted`, a session writes `docs/50-handoff/<capability>.md`. That brief is what the utility node agent is pointed at.

## Decision log for this process
- 2026-10-11: GitHub repo as source of truth (not the OneDrive folder); local clone moved to `C:\opt\family-journey`.
- 2026-10-11: PRs for drafted docs, direct commits for scaffolding and maintenance.
- 2026-10-11: GitHub issues as the dispatch queue.
