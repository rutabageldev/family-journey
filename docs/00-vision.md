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
Everyone in the household knows what is going on and what is theirs to do, and no one has to be the person who keeps everyone else informed. Family OS does that work.

A household runs on commitments: who is doing day care pickup, when the next medical appointment is, what the dog needs today, whose turn it is. Today the two parents keep these straight with a shared calendar, pads of paper, and by talking. It mostly works, but the two of them are what holds it together. Each has to keep the other informed, and the paper gets lost. As the family grows there are more commitments and more people who hold them. Either things get missed, or someone spends their time making sure they are not.

Family OS is where the household keeps its commitments. Each one has an owner. The system keeps the people concerned up to date, so nobody has to pass the word along. A parent knows what the day holds and which parts are theirs. A grandparent who is babysitting knows what is going on and what they need to do. When the children are old enough, they know their own chores and activities and can add what they need.

It grows with the family. In the early years it holds appointments, play dates, and day care runs. Later it holds chores, practices and games, homework, and trips.

"Family OS" is a placeholder name (DO-12 in [discovery outcomes](10-strategy/discovery-outcomes.md)).

### Who it's for
This household only. It is built for everyone listed in DO-1 of [discovery outcomes](10-strategy/discovery-outcomes.md) and judged by the two parents.

### Success
- Commitments are not missed.
- Neither parent is the one who does the reminding.
- Both parents reach for it unprompted, several times a day. This is the secondary sign: people only come back to something that is useful to them.

### Failure
- It becomes an alternative to the existing Home Assistant dashboards and nothing more. That would have been a waste of the effort.
- Mike is the only one who keeps it current.

## Rationale
- **The problem is mostly ahead.** There are few misses today. The expectation is that the misses, or the effort to prevent them, grow with the household, most of all once a commitment belongs to one specific parent or child.
- **Today's tools.** Google Calendar, a shared calendar in Home Assistant, talking, and pads of paper. The shared calendar helped, but it is clunky and buggy, and Home Assistant is clunky for anything that is not automation.
- **Paper holds what the tools do not.** Grocery lists, and the dog's care plan, which gets retyped as a document.
- **The value is hard to count.** Missed commitments, and conversations that happen outside the system, cannot be measured; the two parents can observe them. Use can be counted, which is why it is only the secondary sign.
- **The system can only pass on what it has been told.** Who records commitments matters as much as who sees them. That is the reason for the second failure test.
- **Skylight was the inspiration.** It prompted the idea that one service could keep everyone and everything aligned.
- **Mike's wife has not yet had anything concrete to react to.** Asked in the abstract what would be useful, she does not know. Success depends on her using it every day, so this is the main open risk.

## Implications
- **Commitments and owners are the core.** A calendar event is one kind of commitment. Chores, activities, and care routines are others. The user outcomes (DO-1) are written around who is responsible for what.
- **It is active, not a reference.** It keeps people up to date; they do not have to remember to look. What each user is told, and when, is for the user outcomes.
- **Keeping it current cannot fall to one person.** The user outcomes cover how commitments get in, not only how they are seen.
- **It has to earn daily use from the start.** It cannot wait for older children to become useful. There are commitments now, with a baby in the house.
- **This document is the proposal for Mike's wife.** It is accepted without her review so that she has something concrete to read. Her agreement to the outcomes is still required (DO-3).
- **How it is built is not decided here.** That is tech-stack work (DO-5, DO-9).
- **Not a Skylight clone, not a dashboard.** A feature-for-feature copy of Skylight is ruled out, and so is a re-skin of what Home Assistant already shows.

### Carried into the user outcomes
Candidates raised while framing the vision. None is committed scope; DO-1 and DO-2 decide what is in v1.0 and what is deferred.
- **Now:** medical appointments, play dates, day care drop-off and pickup, grandparents who are babysitting, grocery lists.
- **Early or not at all:** care for the dog (medication, diapers, walks). She is 14, so this is only useful if it comes early.
- **Later:** chores by turn, practices and games and who is driving, homework, grades, trips, guests, grocery requests from the children.
- **Ways in:** phones are the one definite. A kiosk in the main living area, for quick reference and so the children can use it, if Mike's wife likes the product; kiosks in other rooms only if they prove worthwhile.
- **Unplaced:** where family members are.

## Review trigger
- Mike's wife, once she has read this, frames the problem differently or does not see the value.
- The outcomes work cannot find outcomes that pass the success and failure tests.
- The users or a fixed constraint change (see [discovery outcomes](10-strategy/discovery-outcomes.md)).
