---
name: kv-scripture-formatting-check
description: use this skill to audit, correct, or standardize scripture quotation, references, translation labels, csb attribution, key verse formatting, and blue letter bible link handling in ministry outputs. trigger when a user asks to check scripture formatting, add scripture links, format references, verify csb use, prepare devotionals or packets for distribution, distinguish quotation from summary, audit mixed translations, or review scripture-heavy sermons, studies, handouts, slides, courses, devotionals, or exports. do not use for passage interpretation, theological faithfulness, sermon construction, or source transparency except as adjacent checks.
---

# KV Scripture Formatting Check

## Purpose
Use this skill to make Scripture use clear, consistent, and distribution-aware across ministry outputs. It checks formatting, reference precision, quotation labeling, translation handling, CSB attribution awareness, and Blue Letter Bible link handling.

This skill does **not** interpret the passage, decide theological meaning, audit passage faithfulness, or verify source claims. It answers: **Is Scripture being quoted, summarized, referenced, attributed, and linked clearly and responsibly for this output?**

## Quick Decision
Choose one mode:

1. **Audit Mode**: report Scripture formatting issues and required fixes.
2. **Correction Mode**: return corrected Scripture formatting directly.
3. **Compact Final Check**: give a pass / needs revision gate before delivery.
4. **BLB Link Mode**: format references as Markdown links or flag uncertain links for verification.

Keep the response proportionate. Do not turn a formatting check into a passage study or theological audit.

## Workflow

### 1. Classify Scripture use
Identify each Scripture use type:

- direct quotation
- partial quotation or phrase
- summary
- paraphrase
- reference only
- key verse
- reading list
- supporting cross-reference

### 2. Check translation handling
Confirm:

- CSB is the default when the user has not specified another translation.
- Quoted Scripture names the translation.
- Mixed translations are intentional and labeled.
- Summaries and paraphrases are not presented as exact Bible wording.
- User-requested translations are preserved unless clarity or compliance requires a warning.

### 3. Check quotation proportion
Flag overquotation when the output context calls for summary or references instead.

General defaults:

- **Study / sermon prep**: may quote more when needed, but should still remain selective.
- **Sermon manuscripts**: quote key texts and summarize supporting texts.
- **Devotionals**: usually one key verse plus summaries or references.
- **Student packets / workbooks**: quote only what is needed for learner use and permission boundaries.
- **Slides / social posts**: use short excerpts or references.
- **App / web / printed distribution**: include attribution awareness and avoid excessive quotation.

### 4. Check reference precision
References should be specific enough to locate the text and formatted consistently.

Flag:

- vague references such as "somewhere in Romans"
- overly broad references when a verse range is intended
- clustered prooftexts that overwhelm the main passage
- references detached from context, with a note that passage faithfulness may need a separate check

### 5. Label quotation, summary, and reference use
Use clear labels when useful:

- **Scripture:** for exact quotations
- **Key Verse:** for a selected anchor verse
- **Summary:** for compressed restatement
- **Reference:** for reference-only use
- **Reading:** for assigned reading lists

Never place quotation marks around paraphrase or summary unless the wording is supplied as exact Scripture text.

### 6. Check CSB attribution and permission awareness
For distribution-ready ministry resources that quote CSB, verify that an approved CSB acknowledgment is present or requested.

#### Ministry-specific CSB permission rule
When a user provides or references a custom CSB permission file, ministry-specific Holman license, project-specific Scripture-use agreement, or approved ministry attribution wording, prefer that source over generic public CSB permission-page summaries.

For The Crucible's Fire / Kingdom Vision materials, do not rely only on public CSB permission limits if the user's ministry-specific permission grant is available. Treat the ministry-specific permission language and attribution requirements as controlling. If the ministry-specific wording is unavailable in the active context, ask for it or use the placeholder below rather than inventing exact license language.

If the exact approved wording is not available in the active context, do not invent it. Insert or recommend this placeholder:

`[Insert required CSB copyright acknowledgment from approved permission file.]`

Flag missing attribution for app, web, printed, PDF, workbook, LMS, or public-facing resources.

### 7. Handle Blue Letter Bible links
When BLB links are requested:

- Preserve the visible Scripture reference text.
- Use clean Markdown link format.
- Prefer CSB-specific BLB links only when the URL is supplied or confidently verified.
- If an exact link pattern is uncertain, do not invent a final URL. Use a placeholder and mark it for verification.

Recommended placeholder:

`[John 15:1-17](BLB_LINK_TO_VERIFY)`

If the user supplies existing BLB links, check for obvious malformed Markdown, missing visible reference text, or inconsistent style.

### 8. Produce the right output
Use one of the output templates in `references/output-templates.md`.

## Boundaries
Do not:

- interpret the passage or create theological claims
- decide whether a sermon point or application is faithful to the text
- add cross-references not requested or needed for formatting
- generate large amounts of Scripture text that the user did not supply
- invent exact CSB permission language when not available
- invent exact BLB URLs when uncertain
- treat a paraphrase or summary as a quote
- override the user's requested translation without noting why
- use this skill as a substitute for source transparency or passage faithfulness checks

## Common Issues to Flag
Use `references/scripture-use-checklist.md` when needed.

Common issues:

- missing translation label
- mixed translations without explanation
- summary presented as quotation
- quotation marks around paraphrase
- missing or vague reference
- excessive Scripture quotation for the output context
- distribution-ready output lacking CSB attribution
- malformed or uncertain BLB links
- too many supporting references without clear purpose

## Relationship to Other Skills
Use this skill alongside, but do not merge it with:

- **KV Source Transparency Check**: where did claims or sources come from?
- **KV Passage Faithfulness Check**: is the claim faithful to the passage?
- **KV Multi-Asset Throttle**: should this output be produced now or later?

## Test Expectations
When testing this skill, verify that it:

- distinguishes direct quotation from summary and paraphrase
- flags missing translation labels
- flags missing CSB attribution for distribution-ready outputs
- prefers ministry-specific CSB permission or attribution files over generic public permission summaries when available
- catches mixed translations or inconsistent references
- refuses to invent exact permission language or uncertain BLB URLs
- provides corrected formatting when requested
- avoids becoming a passage study or theological audit
