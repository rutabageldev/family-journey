---
id: STRAT-discovery-outcomes
type: strategy
title: Discovery outcomes
status: accepted
updated: 2026-10-12
depends_on: [WORKFLOW]
---
# Discovery outcomes

## Statement
Discovery exists so that Mike has a solid understanding of what he is building before he builds it. That reduces rework and makes building faster.

Discovery ends when Mike judges that every item below is done. There is no deadline. An item is done when it is written down and `accepted` on `main`.

### Product
- `DO-1` The outcomes that must be true to say the product has reached 1.0, listed by user. Each has an id (`UO-n`) and is stated so it can be observed true or false. The users are Mike, his wife, the baby, future children, the dog, house guests, and visiting family.
- `DO-2` The outcomes considered and deferred past 1.0, each with a one-line reason.
- `DO-3` Mike's wife has read the outcomes and agrees with them.
- `DO-4` The capabilities of v1.0 are specified, each naming the outcomes it delivers. Specs state expectations from an outcome perspective and do not propose solutions.

### Tech stack
- `DO-5` The components, each with a one-line responsibility, the technology that implements it, and its source: existing homelab or net new.
- `DO-6` An inventory of the existing homelab utilities available for reuse.
- `DO-7` The data entities, flows, and events or messages v1.0 needs, in rough form, including the interfaces between components. Schemas are not required.
- `DO-8` The system-level expectations: identity and access, privacy, and backup and recovery.
- `DO-9` An ADR for each major decision, including the environment strategy and which repository the code will live in. A decision is major if any of these is true:
  - It has major architectural implications.
  - It is a closed door: changing it later would be difficult.
  - It has a large blast radius: it affects more than one feature or component, and changing it later means reworking each of them.
  - It addresses a security, privacy, or data-loss risk.
  - It adds something new to run where an existing homelab utility could have been reused.

  Everything else the coding agent proposes in its implementation plan, for Mike's approval.

### Implementation plan
- `DO-10` A plan: what gets built in what order, what depends on what, and how v1.0 is checked against the outcomes.
- `DO-11` One handoff document for the file drop to the coding agent: what is in it, the reading order, the shared constraints, and when to stop and ask. No open questions are left in the documents it covers.
- `DO-12` A working name for the product, agreed with Mike's wife. "Family OS" is a placeholder until then.

## Rationale
- Today the product can only be described in generalities. That is not enough to start building.
- Implementation is handed to coding agents working from these documents. Whatever discovery leaves vague, the agent has to guess.

## Implications
- **Vision first.** The vision ([docs/00-vision.md](../00-vision.md)) is a separate doc and comes before the outcomes (DO-1).
- **Household only.** The product is for this household. Generalizing to others is not a goal.
- **Homelab hosted.** It runs on the homelab and reuses as many existing utilities as possible, without hamstringing itself to do so.
- **Proxy outcomes.** Mike and his wife are the only people consulted. Outcomes for everyone else are written on their behalf.
- **No building in discovery.** This is a hard rule. Discovery produces documents and decisions only: no code, no code repositories, no environments. Nothing is handed to a coding agent until discovery has ended.
- **v1.0 is planned once.** All of v1.0 is specified before any of it is built. This does not rule out later versions.
- **What and how are separate.** Specs say what must be true for the user. Technical documents and ADRs say how the system is shaped. The handoff document tells the agent how to use both. There are no per-capability briefs.
- **Deferrals are tracked.** Deferred outcomes are listed with the outcomes (DO-2). Anything else deferred goes under "Parked" in `BACKLOG.md` with a one-line reason.
- **Items are not documents.** The list says what must be written down, not how many documents hold it. The exception is DO-5 to DO-8: they stay separate documents, so the implementing agent reads only the one relevant to its current work.

## Review trigger
- The set of users changes.
- A fixed constraint changes (household only, homelab hosted).
- Discovery shows v1.0 cannot be defined or delivered within those constraints.
- A decision cannot be made with confidence without building something.
