---
id: VISION
type: strategy
title: Family OS vision
status: accepted
updated: 2026-10-12
depends_on: [STRAT-discovery-outcomes]
---
# Family OS vision

## Statement
The household has no single source of truth for running itself that everyone in the family can easily reach. Family OS is meant to be that: the one place the household is managed through.

"Family OS" is a placeholder name (DO-12 in [discovery outcomes](10-strategy/discovery-outcomes.md)).

### Who it's for
This household only. The users are the ones listed in DO-1. Mike and his wife are the two the vision is judged by.

### Success
- The household is managed through the product.
- It is a high-value reference that Mike and his wife each turn to several times a day.

### Failure
- It becomes an alternative to the existing Home Assistant dashboards and nothing more. That would have been a waste of the effort.

### What it might cover
Candidates only. None of this is committed scope; the user outcomes (DO-1, DO-2) decide what is in v1.0 and what is deferred.
- Family calendar
- Chores
- After-school activities
- Where family members are
- Grocery lists

## Rationale
- Today this information is spread across Google Calendar, Home Assistant, and pads of paper. None of them is the place everyone looks.
- Home Assistant is clunky for anything that is not automation. A dedicated app would give more power and flexibility.
- Pads of paper get lost.
- This is an opportunity more than a pain. It is hard to point at what is failing today; the belief is that running the household could be noticeably better. That is why the failure test matters: matching what already exists is not enough.
- The idea came from Skylight, a commercial family calendar and organizer. It showed that a shared family hub could be valuable. Recreating it is not the goal.
- Mike's wife does not yet understand the proposal, and when asked what would be useful she says she does not know. Success depends on her using the product every day, so this is the main open risk.

## Implications
- **Outcomes come next.** The problem is stated here in general terms. The user outcomes (DO-1) are where it gets specific, and each outcome is checked against the success and failure tests above.
- **Her agreement needs a different route.** DO-3 needs her agreement, and asking in the abstract has not produced input. How the outcomes are put to her is settled when they are drafted.
- **Not a Skylight clone, not a dashboard.** A feature-for-feature copy of Skylight is ruled out, and so is a re-skin of what Home Assistant already shows.
- **Home Assistant is not being judged for automation.** The complaint is about using it for everything else. Whether the product reuses it is a tech-stack question (DO-5, DO-6).
- **Form is not decided here.** Mike leans toward a dedicated web app. That becomes a decision when the tech stack is worked (DO-5, DO-9).
- **No non-goals yet.** None are known. They are recorded as they appear: deferred outcomes under DO-2, anything else under "Parked" in `BACKLOG.md`.
- **Constraints are inherited.** Household only, homelab hosted, and proxy outcomes are set in [discovery outcomes](10-strategy/discovery-outcomes.md) and are not restated here.

## Review trigger
- Mike's wife, once she understands the proposal, frames the problem differently or does not see the value.
- The outcomes work cannot find outcomes that pass the failure test.
- The users or a fixed constraint change (see [discovery outcomes](10-strategy/discovery-outcomes.md)).
