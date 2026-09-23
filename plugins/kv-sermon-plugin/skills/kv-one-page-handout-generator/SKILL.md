---
name: kv-one-page-handout-generator
description: use this skill to convert completed ministry teaching content, sermon notes, lesson notes, study handoffs, course sections, devotional lessons, or packet drafts into a concise one-page student-facing handout. trigger when a user asks for a one-page handout, recap sheet, summary handout, printable takeaway, simple class handout, ministry distribution page, or brief learner-facing companion from already-developed teaching. use when preserving source meaning, Scripture focus, main idea, core movements, concise learner takeaways, discussion or response prompts, and print usability matter. do not use to create sermons, research notes, slide decks, full workbooks, leader guides, devotionals, course lessons, or interactive exercises unless explicitly requested.
---

# KV One-Page Handout Generator

## Purpose

Convert completed teaching material into a compact, student-facing one-page handout that preserves the source meaning and gives learners the core idea, main movements, key Scripture references, and a clear response step.

## Boundaries

- Start from completed or substantially developed teaching: sermon, lesson, Bible study, devotional lesson, course section, module excerpt, study handoff, or existing packet draft.
- Do not perform fresh research or exegesis unless the user explicitly asks.
- Do not invent major theological content, new sermon points, new illustrations, or unsupported applications.
- Do not turn the output into a workbook, leader guide, sermon listening guide, slide deck, devotional, course lesson, or discussion packet unless explicitly requested.
- If source material is thin, say so briefly and create a modest handout from what is provided.
- Preserve the source's main idea, passage burden, theological tone, and learner-facing purpose.

## Default Output

When the user asks for a one-page handout, provide one concise student-facing handout in clean markdown.

If the user requests an answer key, guided-note blanks, or a paired version, keep the handout compact and clearly separate student and answer-key material.

## Workflow

1. Identify the source type, primary Scripture, supporting Scriptures, title, main idea, major movements, intended learner response, and any stated application.
2. Compress the teaching into 3 to 5 core movements. Preserve the original order unless reordering is necessary for clarity.
3. Write a brief summary of 75 to 125 words maximum unless the user requests more.
4. Select only the most important Scripture references. Do not overload a one-page handout with full Scripture text unless requested.
5. Include one key takeaway and one response step.
6. Add 1 to 2 reflection or discussion prompts when useful.
7. Use fill-in blanks only if requested or clearly implied by the user's example.
8. Run a final check for source faithfulness, theological restraint, adult tone, and one-page compactness.

## Standard Structure

Use this structure unless the user provides a stronger example or asks for a different format:

```markdown
# [Handout Title]

[Subtitle, if useful]

## Main Text

[Primary Scripture reference]

## Big Idea

[One clear sentence preserving the source burden.]

## In Brief

[75-125 word learner-facing summary.]

## Core Movements

1. **[Movement 1]** - [concise explanation]
2. **[Movement 2]** - [concise explanation]
3. **[Movement 3]** - [concise explanation]

## Key Takeaway

[One memorable, faithful takeaway.]

## Consider

1. [Reflection or discussion question]
2. [Reflection or discussion question]

## Response Step

This week, respond by:
________________________________________________________________________________
________________________________________________________________________________
```

## Compact Alternate Structure

Use this when the source is already short, the user wants a church bulletin insert, or the final handout must be extremely concise:

```markdown
# [Title]

**Main Text:** [Reference]

**Big Idea:** [One sentence]

**Remember:** [2-4 concise bullets]

**Ask:** [One reflection question]

**Respond:** [One concrete next step]
```

## Fill-in Blank Rules

Use blanks only when the user asks for a guided handout or the supplied example clearly uses blanks.

- Use 3 to 8 blanks maximum for a one-page handout.
- Blank the main idea, key contrast, theological term, or response word.
- Do not blank obscure words, trivia, or every sentence.
- In student versions, use `__________`.
- In answer keys, use `__________ (answer)`.
- Do not let blanks make the handout feel childish or like a quiz.

## Style Standards

- Use adult learner language: clear, pastoral, serious when needed, and practical.
- Keep paragraphs short.
- Prefer concise bullets over long explanation.
- Use meaningful headings.
- Keep the handout printable and easy to move into DOCX or PDF.
- Avoid platform language unless the user specifically asks for LMS wording.
- Avoid gimmicks, busywork, filler, ornate language, and moralism.
- Do not include leader-only notes, answer guidance, timing notes, or facilitator cautions in the student handout.

## Scripture Handling

- Preserve the source's Scripture references and translation choices.
- If the user requests full Scripture text and gives no translation, use CSB by default.
- Usually list references rather than full passages in a one-page handout.
- If full Scripture text is included, keep it visually separate and do not bury it in paragraphs.

## Source Transparency

If the user supplied teaching material, state only as needed that the handout is built from the supplied source. Do not imply outside research. If the handout is publication-facing or includes full Scripture quotations, preserve source transparency and Scripture formatting expectations.

## Final Quality Check

Before responding, verify:

- The handout can plausibly fit on one page after formatting.
- The big idea matches the source.
- The core movements preserve the teaching order and burden.
- Scripture references are visible but not excessive.
- Reflection and response prompts flow from the teaching.
- No new theological claims were invented.
- Student-facing content is free of answer keys and leader notes unless separately requested.
