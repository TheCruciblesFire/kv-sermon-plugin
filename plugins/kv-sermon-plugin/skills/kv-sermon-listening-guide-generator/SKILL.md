---
name: kv-sermon-listening-guide-generator
description: use this skill to convert a completed sermon manuscript, hybrid sermon outline, preaching notes, or sermon-prep handoff into a concise student-facing sermon listening guide and, when requested, a matching answer key. trigger when a user asks for a sermon handout, listening guide, fill-in-the-blank handout, church handout, audience note sheet, sermon notes page, or answer-key version from already-developed sermon content. use when source preservation, sparse meaningful blanks, key scripture references, main movements, learner response, notes space, and print usability matter. do not use to create sermons, slide decks, devotionals, course lessons, research notes, or full student workbooks unless explicitly requested.
---

# KV Sermon Listening Guide Generator

## Purpose

Convert completed sermon material into a concise, printable listening guide that helps hearers follow the sermon, retain the main burden, write notes, and respond faithfully. Produce an answer-key version only when requested.

## Boundaries

- Start from completed sermon content: manuscript, hybrid outline, speaking outline, sermon handoff, or final notes.
- Do not create or substantially rewrite the sermon.
- Do not perform fresh exegesis unless the user explicitly asks.
- Do not add unsupported theological claims, new illustrations, or new sermon points.
- Do not turn the output into a student workbook, course lesson, devotional, leader guide, slide deck, or discussion packet unless explicitly requested.
- If source material is thin or unfinished, state that briefly and build a modest guide from what is provided.
- Preserve the sermon’s main idea, textual burden, major movements, and pastoral tone.

## Default Outputs

When the user asks for a sermon handout or listening guide, provide:

1. **Student Version** — blanks omitted from answers.
2. **Answer Key** — only if requested, with answers inserted in parentheses or clearly marked.

If the user requests only one version, produce only that version.

## Workflow

1. Identify the sermon title, subtitle, primary text, supporting texts, main idea, slide cues if present, and sermon movements.
2. Select 3 to 7 sermon movements for the guide. Preserve the preacher’s order.
3. Condense the sermon into short learner-facing lines. Do not copy long manuscript paragraphs.
4. Choose blanks sparingly. Use blanks to reinforce the main idea, key contrast, theological term, or repeated sermon phrase.
5. Add a brief response section with 2 to 4 prompts tied to the sermon’s burden.
6. Add a simple notes section if the guide is likely to be printed for live listening.
7. Create the answer-key version only when requested.
8. Do a final check for source faithfulness, adult tone, print usability, and answer-key separation.

## Fill-in Blank Rules

- Use 5 to 15 blanks for a normal sermon handout unless the user requests more.
- Prefer blanks in the big idea and under sermon movements.
- Do not blank obscure words, trivia, throwaway transitions, or every sentence.
- Do not make adult hearers feel quizzed.
- A blank should help the listener track the sermon, not interrupt comprehension.
- In answer keys, use this pattern: `__________ (answer)`.
- In student versions, use this pattern: `__________`.

## Structure

Use this structure unless the user’s example or request clearly calls for another format:

```markdown
# [Sermon Title]

[Subtitle, if useful]

## Big Idea

[One concise sentence with selected blanks.]

## 1. [First Movement]

Scripture: [reference]

- [Concise guided note line with optional blank.]
- [Concise guided note line with optional blank.]

## 2. [Second Movement]

Scripture: [reference]

- [Concise guided note line with optional blank.]
- [Concise guided note line with optional blank.]

[Continue for the sermon’s main movements.]

## Response

- Identity: [question tied to the sermon]
- Heart: [question tied to the sermon]
- Obedience: [question tied to the sermon]

## Notes

[Leave space or simple heading if output is markdown-only.]
```

For very short handouts, omit the notes section unless requested.

## Style Standards

- Use clear adult-learner language.
- Keep the guide compact, usually 1 to 2 pages in final document form.
- Prefer bullet points over paragraphs.
- Keep Scripture references visible.
- Use en dashes in reference ranges when natural, but do not over-police punctuation.
- Use pastoral seriousness when the sermon is weighty.
- Avoid childish labels, busywork, cleverness, gimmicks, and excessive blanks.
- Keep student-facing material free of answer guidance, teacher notes, facilitator cautions, or slide-production notes.

## Using Slide Cues from the Source

If the source includes slide cues, use them as structural evidence for sermon movement, but do not include slide numbers in the student handout unless requested. Convert slide anchor lines into concise guide statements when they clearly capture the sermon’s burden.

## Source Transparency

If the user supplied a sermon file, mention that the guide is built from the supplied sermon material. Do not imply independent research or external sourcing. If Scripture quotations are included or revised, follow the user’s requested translation; otherwise preserve the source’s translation and references.

## Final Quality Check

Before responding, verify:

- The guide follows the sermon’s actual order.
- The main idea has not been changed.
- Blanks are sparse and meaningful.
- The answer key does not leak into the student version.
- The response prompts flow from the sermon.
- No new claims were invented to fill space.
- The result is printable, concise, and usable for live listening.
