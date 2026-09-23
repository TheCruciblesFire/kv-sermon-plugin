---
name: kv-sermon-audit
description: use this skill to audit, critique, evaluate, tighten, or review sermon outlines, manuscripts, sermon sections, preaching points, or sermon plans for passage faithfulness, source clarity, structure, theology, gospel connection, application, preachability, and revision priorities. trigger when a user asks for a sermon audit, sermon review, sermon critique, sermon evaluation, manuscript review, outline review, preaching diagnosis, revision priorities, or checks for overreach, weak application, unclear flow, or preachability. do not use to create a new sermon, full sermon manuscript, sermon outline, slide deck, devotional, course lesson, student packet, or downstream asset unless explicitly requested.
---

# KV Sermon Audit

## Purpose

Use this skill to audit sermon material without taking over the sermon-building task. The goal is to diagnose faithfulness, clarity, structure, theological handling, application, and preachability, then give prioritized revision direction.

This skill is audit-first. Do not rewrite the whole sermon, create a new sermon outline, produce a manuscript, or generate downstream assets unless the user explicitly asks.

## Operating Boundaries

- Keep Scripture and the controlling passage above sermon structure, illustrations, user notes, and preferred frameworks.
- Treat user-supplied sermon material as material to review, not as automatically correct.
- Provide isolated sample wording only when it clarifies a fix.
- Do not turn the audit into a full passage study, full sermon rebuild, slide plan, devotional, course lesson, packet, social post set, or podcast outline.
- If the user asks for audit plus multiple additional deliverables, use the multi-asset throttle skill first.
- If the user asks for a fresh sermon or full manuscript rather than an audit, do not use this skill unless they also request review or diagnostic evaluation.

## Coordinate With Other KV Skills

Use or recommend related skills when the audit requires them:

- Use `kv-source-transparency-check` when the sermon blends Scripture, user notes, Study Engine handoffs, knowledge-file reasoning, outside sources, historical claims, original-language claims, or inferred synthesis.
- Use `kv-passage-faithfulness-check` when sermon points, applications, theological claims, gospel connections, typology, divine council material, covenant themes, kingdom language, or background claims may outrun the controlling passage.
- Use `kv-scripture-formatting-check` when the sermon includes Scripture quotation, CSB labels, key texts, reference lists, attribution, or Blue Letter Bible links.
- Use `kv-multi-asset-throttle` when the user asks for sermon audit plus slides, handouts, devotionals, courses, packets, podcasts, or social assets.
- Use `kv-study-to-sermon-handoff` instead when the user supplies study material and asks for a sermon-prep handoff rather than an audit.

## Required Inputs

Work with the best available information. Do not ask for clarification unless the audit cannot responsibly proceed.

Prefer these inputs when available:

1. Sermon material to audit: outline, manuscript, section, movement, application, introduction, conclusion, or preaching point.
2. Controlling passage or sermon text.
3. Stated sermon aim, audience, venue, or time target.
4. User concern: passage faithfulness, structure, overreach, application, gospel connection, conclusion, trimming, delivery, or source transparency.
5. Source base: Study Engine handoff, user notes, knowledge files, outside sources, or prior drafts.

If the controlling passage is missing, provide a limited audit of structure, clarity, and preachability, and state that passage-faithfulness conclusions are provisional.

## Audit Workflow

### Step 1: State the Source Base

Name what is being reviewed and what sources are known.

Classify the source base briefly:

- Controlling biblical passage
- Sermon draft / outline / manuscript
- User notes or Study Engine handoff
- Knowledge-file or framework influence
- External sources, if any
- Unknown or unstated sources

### Step 2: Identify the Sermon's Apparent Burden

Summarize the sermon’s apparent main burden in one or two sentences. If the burden is unclear, say so directly.

Check whether the burden appears governed by the passage or by a secondary framework, illustration, doctrinal system, application idea, or emotional appeal.

### Step 3: Audit Passage Faithfulness

Evaluate whether the sermon’s main claims, movements, and applications are supported by the controlling passage.

Use concise support labels:

- Directly supported
- Responsible inference
- Broader biblical-theological synthesis
- Weakly supported
- Overreach / distortion
- Cannot assess without more source context

Flag common sermon risks:

- forced framework
- prosperity or transactional framing
- moralism
- therapeutic drift
- fear or shame leverage
- speculative theology
- flattened gospel connection
- original-language overclaiming
- background claim treated as textual proof
- observation prompt or fill-in that smuggles interpretation

### Step 4: Audit Structure and Flow

Assess whether the sermon has:

- a clear controlling idea
- movements that follow the text or a defensible rhetorical structure
- proportionate attention to each section of the passage
- transitions that help listeners follow the argument
- an introduction that serves the text rather than controlling it
- a conclusion that calls for text-governed response

Flag structural problems:

- too many points
- summary without sermon movement
- application detached from exposition
- illustrations controlling the message
- repeated ideas that should be merged
- abrupt gospel turn
- conclusion that introduces new material

### Step 5: Audit Theology and Gospel Connection

Check whether the sermon handles theological claims proportionately.

A faithful gospel connection should be organic to the passage, canonical context, or sermon burden. Do not require every sermon to force the same gospel formula, and do not allow the gospel connection to flatten the text’s own movement.

Flag:

- true but untethered doctrine
- Christ connection that bypasses the passage
- typology asserted without textual or canonical warrant
- divine council, covenant, kingdom, sacred-space, or nations themes made central without passage support
- doctrinal claims that need better support or softer wording

### Step 6: Audit Application

Evaluate whether applications are text-governed, concrete, pastoral, and proportionate.

Good application may address:

- worship
- repentance
- faith and trust
- obedience
- endurance
- community life
- mission / witness
- prayer
- discipleship habits

Flag applications that are:

- generic advice
- self-improvement detached from God’s action or character
- prosperity-framed
- shame-driven
- more specific than the text permits
- disconnected from the sermon’s explanation
- too abstract for listeners to act on

### Step 7: Audit Preachability and Delivery

Assess whether the sermon is hearable and preach-ready.

Check for:

- clear spoken main idea
- manageable point count
- listener-oriented transitions
- appropriate pacing
- concrete application language
- concise illustrations
- memorable but not gimmicky phrasing
- sections that are too dense, academic, repetitive, or manuscript-bound

### Step 8: Provide Revision Priorities

Do not give an undifferentiated list of edits. Prioritize the revision work.

Use tiers:

1. Must fix before preaching
2. Should improve if time allows
3. Optional polish

If the sermon is basically sound, say so and avoid over-auditing.

## Default Output Format

Use this format unless the user requests something shorter or more specific.

```markdown
# Sermon Audit

## Source Base
- Sermon material reviewed:
- Controlling passage:
- User notes / handoff:
- External sources:
- Audit limits:

## Overall Verdict
[Pass as written / Pass with minor revisions / Revise before preaching / Needs major restructuring / Needs deeper study first]

## Apparent Sermon Burden
[One or two sentences.]

## Strengths
- ...

## Primary Concerns
- ...

## Passage Faithfulness
| Sermon Claim or Movement | Support Level | Assessment | Recommended Handling |
|---|---|---|---|
| ... | ... | ... | ... |

## Structure and Flow
- ...

## Theology and Gospel Connection
- ...

## Application Review
- ...

## Preachability and Delivery
- ...

## Trim / Tighten Recommendations
- ...

## Priority Revision List
### Must Fix Before Preaching
1. ...

### Should Improve If Time Allows
1. ...

### Optional Polish
1. ...

## Final Recommendation
[Concise next action.]
```

## Compact Output Format

Use this for narrow checks.

```markdown
**Verdict:** [Pass / Qualified / Revise / Remove]

**Main issue:** ...

**Why:** ...

**Better direction:** ...
```

## What Counts As Passing

A sermon audit passes when it:

- identifies the sermon burden accurately
- keeps the controlling passage central
- distinguishes text, inference, synthesis, and speculation
- flags major overreach without nitpicking faithful synthesis
- evaluates structure, application, gospel connection, and delivery usefulness
- gives prioritized revisions
- avoids rewriting the whole sermon unless requested

## Failure Modes To Prevent

Do not:

- rewrite the sermon when the user asked for an audit
- create a new outline unless explicitly requested
- treat every weakness as a fatal flaw
- require academic detail that would harm a spoken sermon
- force a preferred theological framework onto the sermon
- reject valid biblical-theological synthesis simply because it is not explicit in one verse
- ignore unsupported original-language or background claims
- let illustrations, applications, or emotional appeals override the passage
- produce slides, devotionals, packets, courses, or media assets from an audit request

## Test Prompts

Use these prompts to validate the skill after installation.

1. `Use kv-sermon-audit. Audit this Ruth 2 sermon outline for passage faithfulness and theological overreach. Do not rewrite it.`
2. `Use kv-sermon-audit. Review this sermon manuscript and give revision priorities only. Do not create a new sermon.`
3. `Use kv-sermon-audit. Check whether this Mark 4:35-41 application promises more than the passage supports: "If you trust Jesus enough, he will keep storms out of your life."`
4. `Use kv-sermon-audit. Audit this sermon for structure, gospel connection, application, and preachability.`
5. `Use kv-sermon-audit. Review this sermon and also create slides, a student handout, a devotional, and social posts.` Expected behavior: invoke multi-asset throttle and audit first; do not produce all downstream assets.
6. `Use kv-sermon-audit. I have an outline but no passage listed. Tell me what you can and cannot responsibly audit.`
7. `Use kv-sermon-audit. Audit this sermon conclusion only. Focus on whether it introduces new material or lands the passage's burden clearly.`
8. `Use kv-sermon-audit. Review this sermon for original-language overclaiming and source transparency.` Expected behavior: coordinate with source transparency and passage faithfulness checks where needed.
