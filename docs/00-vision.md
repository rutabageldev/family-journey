---
id: VISION
type: strategy
title: Family OS vision
status: accepted
updated: 2026-10-13
depends_on: [STRAT-discovery-outcomes]
---
# Family OS vision

## Statement
Everyone in the household always knows what is going on and who is responsible for what.

A household runs on commitments: who is doing day care pickup, when the next medical appointment is, what the dog needs today, whose turn it is. Today the two parents keep these straight with a shared calendar and by talking, and it mostly works. It depends on the two of them keeping each other informed. As the family grows there are more commitments and more people who hold them. Either things get missed, or someone spends their time making sure they are not.

Family OS is the one place the household keeps its commitments. Each one has an owner, and everyone can see it. A parent checks their phone and knows what the day holds and which parts are theirs. A grandparent who is babysitting can see what is going on and what they need to do. When the children are old enough, they see their own chores and activities and add what they need.

It grows with the family. In the early years it holds appointments, play dates, and day care runs. Later it holds chores, practices and games, homework, and trips.

"Family OS" is a placeholder name (DO-12 in [discovery outcomes](10-strategy/discovery-outcomes.md)).

### Who it's for
This household only. The users are the ones listed in DO-1. The two parents are who it is judged by.

### Success
- The household is managed through it.
- It is a high-value reference that both parents turn to several times a day.

### Failure
- It becomes an alternative to the existing Home Assistant dashboards and nothing more. That would have been a waste of the effort.

## Rationale
- **The problem is mostly ahead.** There are few misses today. The expectation is that the misses, or the effort to prevent them, grow with the household, most of all once a commitment belongs to one specific parent or child.
- **Today's tools.** Google Calendar, a shared calendar in Home Assistant, talking, and pads of paper. The shared calendar helped, but it is clunky and buggy, and Home Assistant is clunky for anything that is not automation.
- **Paper holds what the tools do not.** Grocery lists, and the dog's care plan, which gets retyped as a document. Pads of paper get lost.
- **Skylight was the inspiration.** It prompted the idea that one service could keep everyone and everything aligned. Recreating it is not the goal.
- **Mike's wife does not yet understand the proposal.** When asked what would be useful she says she does not know. Success depends on her using it every day, so this is the main open risk.

## Implications
- **Commitments and owners are the core.** A calendar event is one kind of commitment. Chores, activities, and care routines are others. The user outcomes (DO-1) are written around who is responsible for what.
- **It has to earn daily use from the start.** It cannot wait for older children to become useful. There are commitments now, with a baby in the house.
- **This document is the proposal for Mike's wife.** It is accepted without her review so that she has something concrete to read. Her agreement to the outcomes is still required (DO-3).
- **Phones first.** Phones are the one definite way in. A kiosk in the main living area follows if Mike's wife likes the product, for quick reference and so the children can use it. Kiosks in other rooms only if they prove worthwhile. Mike leans toward a web app; that is a tech-stack decision (DO-5, DO-9).
- **Not a Skylight clone, not a dashboard.** A feature-for-feature copy of Skylight is ruled out, and so is a re-skin of what Home Assistant already shows.
- **Home Assistant is not being judged for automation.** Whether the product reuses it is a tech-stack question (DO-5, DO-6).
- **Constraints are inherited.** Household only, homelab hosted, and proxy outcomes are set in [discovery outcomes](10-strategy/discovery-outcomes.md) and are not restated here.

### Carried into the user outcomes
Candidates raised while framing the vision. None is committed scope; DO-1 and DO-2 decide what is in v1.0 and what is deferred.
- **Now:** medical appointments, play dates, day care drop-off and pickup, grandparents who are babysitting, grocery lists.
- **Early or not at all:** care for the dog (medication, diapers, walks). She is 14, so this is only useful if it comes early.
- **Later:** chores by turn, practices and games and who is driving, homework, grades, trips, guests, grocery requests from the children.
- **Unplaced:** where family members are.
- **Not a candidate:** smart home controls for guests. Noted as possible scope creep.

## Review trigger
- Mike's wife, once she has read this, frames the problem differently or does not see the value.
- The outcomes work cannot find outcomes that pass the failure test.
- The users or a fixed constraint change (see [discovery outcomes](10-strategy/discovery-outcomes.md)).
