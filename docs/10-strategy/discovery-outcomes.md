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

It produces three outputs. It ends when Mike has high confidence that they hold what is needed to implement v1.0, and that information is packaged for an agent to begin implementation. There is no deadline.

### DO-1 User outcomes
- `DO-1.1` A list of outcomes, by user, that must be true to say the product has reached 1.0.
- `DO-1.2` The list covers every user: Mike, his wife, the baby, future children, the dog, house guests, and visiting family.
- `DO-1.3` Mike's wife has contributed to the list and signed off on it.

### DO-2 Rough tech stack
- `DO-2.1` The components we think we need are defined.
- `DO-2.2` Each component has identified tooling and a source: existing homelab or net new.
- `DO-2.3` The existing homelab utilities available for reuse are inventoried.
- `DO-2.4` Every major decision has an accepted ADR.
- `DO-2.5` Rough data and event/message needs are described, based on expected data flows.

### DO-3 Implementation plan
- `DO-3.1` A plan for implementing v1.0 exists.
- `DO-3.2` Everything an agent needs to begin implementation is packaged as handoff briefs (see [WORKFLOW](../../WORKFLOW.md), "Hand off").

## Rationale
- Today the product can only be described in generalities. That is not enough to start building.
- Implementation is handed to coding agents working from frozen briefs. Whatever discovery leaves vague, the agent has to guess.

## Implications
- **Household only.** The product is for this household. Generalizing to others is not a goal.
- **Homelab hosted.** It runs on the homelab and reuses as many existing utilities as possible, without hamstringing itself to do so.
- **Proxy outcomes.** Mike and his wife are the only users who can speak for themselves. Outcomes for everyone else are written on their behalf.
- **Documents, not code.** Discovery produces documents; building starts after it ends.
- **Where the outputs land:**

| Output | Location |
|---|---|
| DO-1 | `docs/20-product/` |
| DO-2 | `docs/30-technical/`, `docs/40-adr/` |
| DO-3 | `docs/10-strategy/`, `docs/50-handoff/` |

## Review trigger
- The set of users changes.
- A fixed constraint changes (household only, homelab hosted).
- Discovery shows v1.0 cannot be defined or delivered within those constraints.
