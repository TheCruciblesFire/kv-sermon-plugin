---
name: kv-multi-asset-throttle
description: use this skill to control scope when a ministry user requests many outputs or a full bundle at once. trigger when a prompt asks for three or more distinct assets, crosses multiple gpt domains, or uses phrases like "complete ministry package," "everything I need," "full bundle," "sermon plus slides plus handout," "course plus workbook plus facilitator guide," or similar. use to identify the controlling output layer, produce only the primary asset or master handoff, give brief downstream notes, and recommend build order. do not use for single-output requests, two closely paired outputs, or normal staged planning requests.
---

# KV Multi-Asset Throttle

## Purpose
Use this skill to prevent overproduction when a user asks for many ministry assets at once. The goal is scope control: identify the controlling output layer, preserve GPT boundaries, and sequence downstream work without producing every asset prematurely.

This skill does **not** replace GPT identity, theological guardrails, passage-centered reasoning, source transparency, or passage-faithfulness review. It answers: **What should be built now, what should become handoff notes, and what should wait?**

## Quick Decision
Choose one mode:

1. **Gentle Throttle**: The request crosses several output families, but the user mainly needs sequencing.
2. **Full Throttle**: The request asks for three or more assets and risks overproduction.
3. **Master Handoff**: The current GPT should not build the requested assets directly or the source needs approval first.
4. **Build Order Only**: The user asks for workflow planning rather than full asset production.

Keep the response proportionate. Do not turn scope control into a full project plan unless requested.

## Workflow

### 1. List the requested assets
Identify explicit and implied assets. Examples: passage study, sermon manuscript, slide deck, devotional, student packet, leader guide, workbook, podcast, social posts, course lesson, LMS handoff, interactive exercise, export package.

### 2. Classify each asset by domain
Use `references/domain-routing.md` for common routing. If the current GPT's identity is known, name which assets belong inside its scope and which should be downstream.

### 3. Identify the controlling output layer
Select the one asset or foundation that should control the others.

Default rules:

- **Study Engine**: study foundation or master study-to-ministry handoff first.
- **Sermon Builder**: sermon asset first, then downstream handoff notes.
- **Devotion Builder**: devotional asset first, then derivative notes.
- **Course Builder**: course architecture or build sheet first.
- **Student Packet Builder**: packet-ready source or packet asset first.
- **Interactive Exercise Builder**: interaction recommendation or exercise first, after source content exists.

When no GPT identity is known, choose the earliest upstream foundation that prevents downstream drift.

### 4. Produce only the primary asset or a master handoff
Do not fully build every requested downstream asset. Produce either:

- the controlling asset if it is clearly requested and inside scope, or
- a master handoff if the request crosses too many domains, lacks an approved source, or needs sequencing first.

### 5. Add brief downstream handoff notes
For each non-primary asset, provide concise notes:

- source base to preserve
- what to avoid
- recommended next workflow
- one sentence on what should be built later

Do not create full secondary assets unless the user explicitly asks for that asset next.

### 6. Recommend production order
End with a clear sequence for the remaining assets. Keep it practical and ordered from upstream source to downstream delivery.

### 7. Flag quality checks when needed
When the source material contains substantive biblical or theological claims, recommend source transparency and passage faithfulness checks before downstream multiplication.

## Boundaries
Do not:

- create all requested assets in full by default
- let a handoff become full production
- turn a study request into final ministry production without explicit permission
- turn a sermon request into course, devotional, slide deck, podcast, and packet production by default
- collapse GPT roles into one universal generator
- let downstream notes change the approved source burden
- produce assets outside the current GPT's domain when a handoff is safer
- ask unnecessary clarifying questions when a responsible primary layer can be chosen
- treat broad phrases like "everything I need" as permission to generate every asset

## Output Format
Use one of the formats in `references/output-templates.md`:

- **Full Throttle Response** for broad bundle requests.
- **Gentle Throttle Response** for mild scope crossing.
- **Master Handoff Response** when the safe deliverable is a source-controlled handoff.
- **Build Order Response** when the user wants process planning only.

## Failure Modes to Prevent
Use `references/failure-modes.md` when diagnosing or revising a response that overproduced.

Common failures:

- producing every requested asset in full
- building derivative assets before the source is approved
- treating handoff notes as finished assets
- mixing student and leader content
- turning sermon material into a course without redesign
- turning devotional material into a sermon without permission
- adding unsupported theology in downstream notes
- omitting the recommended build order

## Relationship to Other Skills
Use this skill alongside, but do not merge it with:

- **KV Source Transparency Check**: use when source categories or unsupported claims need disclosure.
- **KV Passage Faithfulness Check**: use when claims, applications, or frameworks need testing against the passage.
- **Scripture Formatting / CSB / BLB Check**: use when Scripture quotation, attribution, references, or links are the issue.

## Test Expectations
When testing this skill, verify that it:

- identifies multiple requested assets
- selects the correct controlling output layer
- produces only the primary asset or master handoff
- gives concise downstream notes
- preserves GPT boundaries
- recommends a clear build order
- does not fully generate every requested asset
