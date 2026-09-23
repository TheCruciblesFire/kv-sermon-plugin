---
name: kv-study-to-sermon-handoff
description: use this skill to convert a kv study engine passage study, inductive study, or sermon-prep output into a clean kv sermon builder handoff. trigger when a user asks for a study-to-sermon handoff, sermon-prep handoff, sermon builder handoff, preaching handoff, or a conversion from study engine material into sermon-ready direction. use when preserving source transparency, passage burden, interpretive cautions, theological boundaries, and textual support levels matters. do not use to create a sermon manuscript or full sermon outline unless explicitly requested.
---

# KV Study to Sermon Handoff

## Purpose
Convert upstream Study Engine material into a bounded Sermon Builder handoff. Preserve the study's controlling passage, central burden, source base, interpretive cautions, theological boundaries, and support levels while giving sermon-ready direction without producing the sermon.

This skill does not perform a fresh passage study, write a sermon manuscript, or replace Sermon Builder's work. It prepares a reliable handoff from Study Engine to Sermon Builder.

## Routing
Use this skill when the user provides or refers to one of these inputs:

- KV Study Engine passage study
- inductive Bible study output
- sermon-prep study notes
- Study Engine to Sermon Builder transfer material
- source-controlled passage study that needs sermon handoff formatting

Pair with other Skills when needed:

- Use `kv-source-transparency-check` when source categories are unclear, blended, or need a final source statement.
- Use `kv-passage-faithfulness-check` when a proposed sermon direction, application, theological synthesis, or framework may outrun the passage.
- Use `kv-multi-asset-throttle` when the request asks for a sermon plus slides, devotional, packet, course, podcast, or other downstream assets.
- Use `kv-scripture-formatting-check` when Scripture quotations, reference labels, CSB attribution, or BLB links need final cleanup.

## Hard Boundaries
Do not:

- create a sermon manuscript unless the user explicitly asks for one
- create a full sermon outline unless the user explicitly asks for one
- add new major theological claims not present in or warranted by the study
- treat Study Engine synthesis as Scripture
- erase interpretive cautions, source limitations, or uncertainty markers
- convert observations into sermon points without marking the level of support
- expand downstream assets beyond a concise handoff
- blend Study Engine and Sermon Builder roles into one undifferentiated process

## Workflow

### 1. Identify the controlling material
Name the controlling passage, output source, and intended receiving GPT or workflow. If the passage is not explicit, infer only when the supplied material clearly identifies it; otherwise mark it as `unspecified in supplied material`.

### 2. Extract the study burden
Identify the passage's central burden using the supplied Study Engine material. Preserve the study's emphasis rather than inventing a new sermon burden.

Use this distinction:

- **Passage burden**: what the text itself appears to press on the reader.
- **Sermon direction**: how Sermon Builder may preach that burden.
- **Application lane**: pastoral implications that remain downstream and should not control the passage.

### 3. Preserve source transparency
Carry forward the source base in concise form:

- primary biblical text
- immediate context
- user-supplied notes or study material
- knowledge-file or framework influence
- external sources, if named
- original-language or background claims, if present
- generated synthesis or inference

Preserve named or cited sources from the Study Engine output when present, including source names, file names, commentary names, lexical tools, user-supplied documents, and citation notes. If no external sources are named, state: “No external sources were named in the supplied Study Engine material.” Do not invent sources. If the source base is unclear, include a caution and recommend `kv-source-transparency-check`.

### 4. Classify claim support
For major claims and sermon-ready directions, classify support using these labels:

- **Direct textual claim**: explicitly stated or clearly shown in the passage.
- **Strong contextual inference**: strongly warranted by context, genre, structure, or argument flow.
- **Responsible biblical-theological synthesis**: canonically responsible but not the main point of the local passage alone.
- **Pastoral application lane**: usable application that must remain tethered to the passage.
- **Caution / do not overstate**: potentially true, but not safe to make controlling without more support.

### 5. Preserve cautions and boundaries
Carry forward any Study Engine cautions, including:

- interpretive uncertainty
- genre or context limitations
- original-language restraint
- background-claim limits
- framework-overreach concerns
- moralism, prosperity framing, therapeutic drift, or speculative theology risks
- gospel-connection boundaries
- downstream asset boundaries

### 6. Build the handoff only
Use the template in `references/handoff-template.md`. Keep the handoff clean, sermon-ready, and bounded. Include possible sermon direction, not a completed sermon.

### 7. Final gate
Before delivering, check:

- Does the handoff preserve the controlling passage and central burden?
- Are direct textual claims distinguished from inference and synthesis?
- Are source categories clear enough?
- Are cautions and theological boundaries preserved?
- Did the output avoid becoming a sermon manuscript or full outline?
- Are downstream assets deferred unless explicitly requested?

If any gate fails, revise before delivering.

## Output Discipline
Default output should be one handoff document with concise sections. Do not include long commentary, full exposition, polished sermon transitions, slide cues, manuscript language, or asset production unless requested.
