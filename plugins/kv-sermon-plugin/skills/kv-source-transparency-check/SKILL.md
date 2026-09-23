---
name: kv-source-transparency-check
description: use this skill to audit, verify, or disclose the source base behind ministry outputs. trigger when a response or draft uses scripture, user notes, uploaded files, prior gpt handoffs, knowledge files, external research, original-language claims, historical/cultural claims, theological synthesis, or blended sources. use for final reviews, publication checks, handoffs to another gpt/tool, source-base statements, and requests such as "verify the sources," "where did this come from," "add source transparency," or "check whether this is supported." do not use for casual brainstorming, grammar-only edits, or tasks with no substantive source-dependent claims.
---

# KV Source Transparency Check

## Purpose
Use this skill to identify, classify, and disclose the source base behind a ministry output. The goal is claim accountability: do not let Scripture, user notes, knowledge-file frameworks, prior GPT handoffs, external research, original-language claims, historical background, inference, or generated synthesis blur together.

This skill does **not** replace passage-faithfulness review, theological judgment, or GPT-specific guardrails. It answers: **Where did this claim come from, and is that source use clear enough?**

## Quick Decision
Choose one mode:

1. **Brief Source Statement**: Add a concise source-base note to an otherwise acceptable output.
2. **Source Transparency Audit**: Review a draft and classify claim support.
3. **Publication / Handoff Verification Note**: Prepare a source-scope note for another GPT, platform, or ministry workflow.

Keep the output proportionate. Do not add academic apparatus to brief pastoral or devotional material unless the source risk requires it.

## Workflow

### 1. Identify the output type
Classify the draft as a passage study, sermon material, devotional, course/lesson, student packet, interactive exercise, handoff, export/formatting output, or other ministry asset.

### 2. Identify the source base
List every source category actually used or apparently relied on:

- primary biblical text
- immediate context or broader canonical support
- user-supplied notes, outlines, documents, or handoffs
- uploaded files or GPT knowledge files
- external sources
- original-language sources or claims
- historical/cultural background
- generated synthesis or inference

Do not invent source names. If a source is unclear, label it as unclear and recommend clarification.

### 3. Segment the draft into claim units
Review by claim unit rather than every sentence. Useful units include: main idea, passage summary, theological claim, background claim, application claim, original-language note, illustration/transition, activity feedback, or downstream instruction.

### 4. Classify each claim
For each major claim unit, identify:

- source category
- support level
- whether the source is named clearly
- action needed, if any

Use `references/claim-categories.md` for approved categories and support labels.

### 5. Flag problems
Flag these issues clearly:

- unsupported claims
- unmarked external-source claims
- knowledge-file framework presented as Scripture
- theological synthesis presented as direct passage meaning
- original-language claims without adequate basis
- user assumptions presented as verified facts
- speculation stated as certainty
- missing source statement
- prior GPT handoff treated as inherently authoritative

### 6. Recommend corrections
Recommended actions may include: add source statement, soften wording, remove claim, cite source, mark as inference, mark as framework influence, verify externally, or route to a Passage Faithfulness / Theological Overreach check.

### 7. Produce the final source statement or audit
Use the appropriate template from `references/output-templates.md`.

## Boundaries
Do not:

- invent citations or sources
- treat knowledge-file frameworks as equal to Scripture
- treat user-supplied material as verified unless checked
- perform a full theological-faithfulness audit unless explicitly asked or paired with the appropriate skill
- overload every response with formal citation tables
- use source transparency as a substitute for actual source verification
- rewrite the underlying sermon, study, devotional, course, packet, or exercise unless the user asks for revision

## Pairing Guidance
Use this skill before deeper faithfulness review when source categories are unclear. Pair with:

- **Passage Faithfulness / Theological Overreach Check** when a claim may outrun the passage.
- **Multi-Asset Throttle** when a broad request risks carrying unsupported claims into several outputs.
- **Scripture Formatting / CSB / BLB Check** when Scripture quotation, attribution, or links need validation.

## Test Expectations
When testing this skill, verify that it:

- distinguishes Scripture from user notes
- distinguishes source disclosure from theological evaluation
- flags background, original-language, and external-source claims needing support
- does not invent sources
- does not over-label ordinary pastoral application as needing citation
- produces brief statements when a full audit is unnecessary
- handles prior GPT handoffs as source material, not final authority
