---
id: STRAT-discovery-outcomes
type: strategy
title: Discovery outcomes
status: draft
updated: 2026-10-11
depends_on: [WORKFLOW]
---
# Discovery outcomes

## Statement
Discovery defines the shape of the product we are going to build, so that development starts with a clear understanding of where we are going instead of generalities.

It produces three outputs: user outcomes, a tech stack, and an implementation plan. Discovery ends when every criterion below is met and Mike and his wife have both signed off on that (DO-4). There is no deadline.

A criterion is met only by docs merged to `main` with status `accepted`.

### DO-1 User outcomes
- `DO-1.1` `docs/20-product/user-outcomes.md` lists, by user, the outcomes that must be true to say the product has reached 1.0. Each is stated so it can be observed true or false.
- `DO-1.2` Each user has at least one outcome or an explicit "none for 1.0" entry. The users are Mike, his wife, the baby, future children, the dog, house guests, and visiting family.
- `DO-1.3` Mike's wife has reviewed the outcomes for every user and signed off on the list.
- `DO-1.4` Outcomes considered and deferred past 1.0 are listed in the same doc, each with a one-line reason.
- `DO-1.5` Every 1.0 outcome traces to at least one capability spec in `docs/20-product/`.

### DO-2 Tech stack
- `DO-2.1` A doc in `docs/30-technical/` lists each component with a one-line responsibility. Every capability spec names the components it uses, and none uses a component that is not on the list.
- `DO-2.2` For each component, the list names the technology that implements it and its source: existing homelab or net new.
- `DO-2.3` A doc in `docs/30-technical/` inventories the existing homelab utilities available for reuse.
- `DO-2.4` Every major decision has an ADR. A decision is major if a brief depends on it or a coding agent would otherwise have to guess. Open decisions are tracked as dispatch issues. This is met when none are open and every ADR in any brief's `depends_on` is `accepted`.
- `DO-2.5` A doc in `docs/30-technical/` names the data entities, flows, and events or messages v1.0 needs. Schemas are not required. Anything a brief relies on is fixed in an ADR or in the brief's Interfaces section.
- `DO-2.6` An ADR decides the environment strategy: which environments will exist, what each is for, and how a change is verified and promoted between them.
- `DO-2.7` A doc in `docs/30-technical/` states the system-level expectations for v1.0, covering at least identity and access, privacy, and backup and recovery.

### DO-3 Implementation plan
- `DO-3.1` A plan in `docs/10-strategy/` lists every brief, the order and dependencies between them, and how v1.0 is verified against the DO-1 outcomes.
- `DO-3.2` Every capability spec has a brief (the `INDEX.md` "Gaps" section shows none), every 1.0 outcome traces to at least one brief, and no brief, or spec or ADR it depends on, has an unresolved open question.
- `DO-3.3` An ADR decides which repository the code will live in.
- `DO-3.4` The product has a working name, agreed by Mike and his wife and recorded in the DO-3.3 ADR. It is used for the repository and in the briefs. "Family OS" is a placeholder until then.

### DO-4 Exit
- `DO-4.1` An exit record in `docs/10-strategy/` lists every criterion above with a link to the doc or docs that meet it.
- `DO-4.2` Mike and his wife have each signed off on the exit record.

## Rationale
- Today the product can only be described in generalities. That is not enough to start building.
- Implementation is handed to coding agents working from frozen briefs. Whatever discovery leaves vague, the agent has to guess.

## Implications
- **Vision first.** The vision ([docs/00-vision.md](../00-vision.md)) is a separate doc. It is `accepted` before the DO-1 list is accepted. The constraints below are restated here until then, and are cited from the vision afterwards.
- **Household only.** The product is for this household. Generalizing to others is not a goal.
- **Homelab hosted.** It runs on the homelab and reuses as many existing utilities as possible, without hamstringing itself to do so.
- **Proxy outcomes.** Mike and his wife are the only people consulted, and both are sources for the outcomes. Outcomes for everyone else are written on their behalf.
- **No building in discovery.** This is a hard rule. Discovery produces documents and decisions only: no code, no code repositories, no environments. Anything decided here is created in implementation. No brief is assigned to a coding agent until discovery has ended (DO-4).
- **v1.0 is planned once.** All of v1.0 is specified and briefed before any of it is built. Discovery is not reopened slice by slice. This does not rule out later versions.
- **Sign-off is recorded.** A sign-off by Mike's wife is a dated line in the doc it applies to, added before that doc is accepted. A later change to that doc needs a fresh line.
- **Deferrals are tracked.** Outcomes deferred past 1.0 go in the outcomes doc (DO-1.4). Anything else deferred goes under "Parked" in `BACKLOG.md` with a one-line reason.
- **Where the outputs land:**

| Output | Location |
|---|---|
| DO-1 | `docs/20-product/` |
| DO-2 | `docs/30-technical/`, `docs/40-adr/` |
| DO-3 | `docs/10-strategy/`, `docs/40-adr/`, `docs/50-handoff/` |
| DO-4 | `docs/10-strategy/` |

## Review trigger
- The set of users changes.
- A fixed constraint changes (household only, homelab hosted).
- Discovery shows v1.0 cannot be defined or delivered within those constraints.
- A decision cannot be made with confidence without building something.
