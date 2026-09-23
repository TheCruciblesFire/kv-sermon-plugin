# KV Sermon Plugin — Supporting Skill Registry v1

**Stage:** 4 — Supporting Skill Registry  
**Status:** COMPLETE  
**Core Skill:** `kv-sermon-builder`  
**Upstream Study Authority:** `kv-study-engine`  

## 1. Purpose

This registry defines the procedural ownership surrounding `kv-sermon-builder`. It prevents the core Sermon Skill from absorbing repeatable audits, handoffs, formatting QA, scope-control procedures, or downstream learner-resource transformations already owned by validated KV Skills.

The core principle is:

> `kv-sermon-builder` builds and revises sermons. Dedicated Skills own formal handoffs, audits, checks, throttling, and bounded downstream transformations.

## 2. Authority Model

### Core sermon authority

`kv-sermon-builder` owns faithful sermon construction and sermon-shaping work from an approved source base.

It owns:

- sermon Main Idea and Goal/Aim;
- textual burden;
- sermon structure and 3–5 movements when appropriate;
- sermon outline;
- hybrid manuscript / outline;
- full sermon manuscript when requested;
- speaking outline and preacher-facing notes;
- introduction, transitions, conclusion, and response;
- passage-governed application;
- responsible Christ/gospel connection;
- sermon revision, tightening, trimming, expansion, and restructuring;
- one requested sermon section;
- concise sermon-to-downstream handoff notes after sermon content is approved.

### Upstream study authority

`kv-study-engine` is not a Sermon Plugin supporting procedure. It is the upstream study authority.

Use it when the primary need is:

- passage meaning;
- passage or inductive study;
- historical/cultural/background research;
- original-language analysis as a primary task;
- interpretive-option comparison;
- topical biblical theology or worldview/theme tracing;
- research packets, source inventories, annotated bibliographies, or research maps.

Return to `kv-sermon-builder` only after the study foundation is sufficiently settled for sermon construction.

## 3. Trigger Precedence

Use these precedence rules when requests overlap.

1. **Three or more distinct assets across domains:** invoke `kv-multi-asset-throttle` first. It selects the controlling output and sequences the rest.
2. **Formal Study Engine → Sermon Builder transfer:** use `kv-study-to-sermon-handoff` before sermon construction.
3. **Broad sermon review/critique:** use `kv-sermon-audit` as the controlling audit. It may coordinate narrower QA Skills as needed.
4. **Narrow faithfulness question:** use `kv-passage-faithfulness-check` directly.
5. **Narrow source/provenance question:** use `kv-source-transparency-check` directly.
6. **Narrow Scripture formatting/CSB/reference/link question:** use `kv-scripture-formatting-check` directly.
7. **Exact learner-facing derivative requested from a completed sermon:** use the exact transformation Skill (`kv-sermon-listening-guide-generator` or `kv-one-page-handout-generator`).
8. **Final print/PDF cleanup of an already-created packet:** use `kv-print-ready-packet-polish` after content creation, not before.
9. **Ordinary sermon building/revision with no dedicated trigger:** remain in `kv-sermon-builder`.

Do not invoke a broad Skill when a narrower validated Skill exactly matches the user’s stated task.

## 4. Supporting Skill Registry

### A. `kv-study-to-sermon-handoff`

**Classification:** Shared handoff Skill; upstream-to-sermon bridge.  
**Trigger:** The user asks for a study-to-sermon handoff, sermon-prep handoff, preaching handoff, or conversion of approved Study Engine material into sermon-ready direction.  
**Required input:** Study Engine output, inductive study, sermon-prep study notes, or another source-controlled study base.  
**Owns:**

- preserving the controlling passage and study burden;
- carrying forward source base and interpretive cautions;
- classifying support levels;
- distinguishing passage burden, sermon direction, and application lanes;
- preparing a bounded sermon-ready handoff.

**Must not:**

- perform a fresh passage study;
- invent new major theology;
- erase uncertainty or source limits;
- write the sermon manuscript;
- create a full sermon outline unless explicitly requested;
- expand into downstream assets.

**Return path:** Hand the completed source-controlled packet to `kv-sermon-builder` when sermon construction is the next requested task.

---

### B. `kv-sermon-audit`

**Classification:** Sermon-specific QA Skill.  
**Trigger:** The user asks to audit, critique, evaluate, review, diagnose, or tighten a sermon outline, manuscript, section, point, or plan for faithfulness, structure, theology, gospel connection, application, or preachability.  
**Required input:** Sermon material; controlling passage when available.  
**Owns:**

- diagnosis-first sermon review;
- sermon burden assessment;
- passage-faithfulness assessment at sermon level;
- structure and flow review;
- theology/gospel-connection review;
- application review;
- preachability/delivery review;
- prioritized revision recommendations.

**May coordinate:**

- `kv-passage-faithfulness-check` for focused overreach;
- `kv-source-transparency-check` for provenance concerns;
- `kv-scripture-formatting-check` for Scripture QA;
- `kv-multi-asset-throttle` when audit is bundled with three or more assets.

**Must not:**

- rewrite the whole sermon merely because weaknesses are found;
- create a new sermon outline unless requested;
- become a passage study;
- generate downstream assets.

**Return path:** Send approved revision priorities back to `kv-sermon-builder` when the user asks to revise, rebuild, trim, or strengthen the sermon.

---

### C. `kv-passage-faithfulness-check`

**Classification:** Shared theological/textual QA Skill.  
**Trigger:** The user asks whether a claim, sermon point, application, gospel connection, theological framework, typology, original-language claim, or other ministry move is faithful to the controlling passage.  
**Owns:**

- short claim checks;
- passage-faithfulness audits;
- overreach/framework checks;
- support-level classification;
- risk identification;
- corrected wording for weak or distorted claims.

**Support levels:**

- direct textual support;
- strong contextual inference;
- responsible biblical-theological synthesis;
- weak support / possible overreach;
- speculation / distortion.

**Must not:**

- replace full exegesis;
- become a full sermon rewrite;
- perform source-transparency work as its primary task;
- force or reject frameworks apart from what the passage supports.

**Return path:** Return corrected/qualified claims to `kv-sermon-builder` for incorporation into sermon content when revision is requested.

---

### D. `kv-source-transparency-check`

**Classification:** Shared source/provenance QA Skill.  
**Trigger:** The user asks where sermon/study claims came from, whether sources are clear, whether blended sources are disclosed, or whether a publication/handoff needs a source statement.  
**Owns:**

- source-base identification;
- source-category classification;
- claim-source mapping;
- source-disclosure statements;
- provenance problems;
- publication/handoff source notes.

**Must distinguish:**

- Scripture;
- immediate/canonical context;
- user notes;
- Study Engine or prior GPT handoffs;
- uploaded/knowledge files;
- external research;
- original-language/background claims;
- generated synthesis/inference.

**Must not:**

- invent citations;
- treat user material or prior GPT output as automatically verified;
- become a passage-faithfulness audit;
- rewrite the sermon unless revision is separately requested.

**Return path:** Return the corrected source statement or source-risk notes to the active builder/auditor. For sermon revision, control returns to `kv-sermon-builder`.

---

### E. `kv-scripture-formatting-check`

**Classification:** Shared Scripture-use QA Skill.  
**Trigger:** The user asks to check or correct Scripture quotation, references, translation labels, CSB attribution, quotation-vs-summary handling, or Blue Letter Bible link readiness.  
**Owns:**

- Scripture-use classification;
- translation handling;
- quotation proportion;
- precise reference formatting;
- quote/summary/reference labeling;
- CSB attribution and ministry-specific permission awareness;
- BLB link formatting/verification posture;
- compact final Scripture QA gates.

**Must not:**

- interpret the passage;
- decide sermon theological faithfulness;
- add unrequested cross-references;
- invent CSB permission wording;
- invent uncertain BLB URLs;
- replace source-transparency or passage-faithfulness review.

**Return path:** Return corrected Scripture handling to `kv-sermon-builder` or the downstream artifact Skill that requested QA.

---

### F. `kv-multi-asset-throttle`

**Classification:** Shared scope-control Skill.  
**Trigger:** The request asks for three or more distinct assets, crosses multiple production domains, or uses broad bundle language such as “everything I need.”  
**Owns:**

- requested-asset inventory;
- domain classification;
- controlling-output selection;
- primary-asset-first sequencing;
- concise downstream notes;
- recommended production order.

**Sermon-specific default:** If Sermon Builder is the active lane, keep the sermon asset primary, then route downstream assets from the approved sermon.

**Must not:**

- build every requested asset;
- collapse GPT/Skill domains;
- let handoff notes become finished secondary assets;
- change the approved sermon burden while sequencing derivatives.

**Return path:** Return control to `kv-sermon-builder` when the sermon is the selected primary asset; otherwise route to the Skill/GPT that owns the selected primary layer.

---

### G. `kv-sermon-listening-guide-generator`

**Classification:** Sermon-specific downstream transformation Skill.  
**Trigger:** The user explicitly asks for a sermon handout, listening guide, fill-in-the-blank sermon notes page, church handout, audience note sheet, or matching answer key from completed sermon material.  
**Required input:** Completed or substantially completed sermon material.  
**Owns:**

- compact student listening guide;
- preservation of sermon order and burden;
- 3–7 sermon movements;
- sparse meaningful blanks;
- response prompts;
- notes space;
- optional answer key when requested.

**Must not:**

- create or substantially rewrite the sermon;
- perform fresh exegesis;
- add new sermon points or unsupported theology;
- become a workbook/course/devotional/leader guide/slide deck.

**Return path:** Usually terminal for content generation. Route to `kv-print-ready-packet-polish` only when the completed listening guide needs final print/PDF cleanup.

---

### H. `kv-one-page-handout-generator`

**Classification:** Shared learner-facing transformation Skill.  
**Trigger:** The user explicitly asks for a one-page handout, recap sheet, summary handout, printable takeaway, or simple learner-facing companion from completed teaching or sermon material.  
**Required input:** Completed or substantially developed source content.  
**Owns:**

- one-page compression;
- preserved Main Idea/passage burden;
- 3–5 core movements;
- key Scripture references;
- concise summary;
- key takeaway;
- 1–2 reflection prompts when useful;
- one response step.

**Must not:**

- perform fresh research/exegesis;
- invent new major theology or sermon points;
- become a workbook, listening guide, course lesson, leader guide, or devotional.

**Return path:** Usually terminal for content generation. Route to `kv-print-ready-packet-polish` when final print/PDF cleanup is requested.

---

### I. `kv-print-ready-packet-polish`

**Classification:** Shared final-production polish Skill.  
**Trigger:** The user asks to polish, clean up, audit, or prepare an already-created packet, workbook, handout, listening guide, leader guide, discussion sheet, devotional packet, or course packet for print/PDF distribution.  
**Required input:** Existing completed or near-completed resource.  
**Owns:**

- final content-layer preservation;
- heading/label consistency;
- audience separation;
- response-space usability;
- answer-key/leader-note separation;
- print-oriented formatting QA;
- light Scripture/source-preservation flags;
- final QC notes.

**Must not:**

- create a new sermon, new packet, new lesson, new devotional, or new interaction;
- perform fresh exegesis;
- silently rewrite substantive theology;
- substitute for formal passage-faithfulness or Scripture-formatting checks.

**Return path:** Terminal content-polish layer. If a DOCX/PDF is requested, hand off to the appropriate document/PDF artifact workflow after content is approved.

## 5. Shared vs Sermon-Specific Classification

### Sermon-specific Skills

These are primarily owned by the Sermon Plugin domain:

- `kv-sermon-builder`
- `kv-sermon-audit`
- `kv-sermon-listening-guide-generator`

### Shared ecosystem Skills

These are reused across multiple KV plugins/workflows and should remain single canonical Skills even if a release package needs to include or reference them:

- `kv-study-to-sermon-handoff`
- `kv-passage-faithfulness-check`
- `kv-source-transparency-check`
- `kv-scripture-formatting-check`
- `kv-multi-asset-throttle`
- `kv-one-page-handout-generator`
- `kv-print-ready-packet-polish`

### External upstream dependency

- `kv-study-engine`

Do not fork or rewrite `kv-study-engine` inside the Sermon Plugin. Stage 5 must decide the install/package dependency mechanism without creating a divergent duplicate Study Engine.

## 6. No-Duplication Rules

The following procedures must not be reimplemented inside `kv-sermon-builder`:

- formal study-to-sermon handoff;
- formal sermon audit;
- formal passage-faithfulness audit;
- formal source-transparency audit;
- formal Scripture-formatting/CSB/BLB QA;
- three-plus-asset scope control;
- sermon listening-guide generation;
- one-page handout generation;
- print-ready packet cleanup.

Ordinary sermon discipline remains in the core. The core may avoid overreach, preserve sources, quote Scripture carefully, and avoid scope creep in normal work, but it must not recreate the dedicated procedural workflow when a dedicated Skill trigger is met.

## 7. Return-Control Rules

Use these hand-back rules to prevent Skills from becoming dead ends or absorbing the core builder role.

| Skill | Return / Next Owner |
|---|---|
| `kv-study-to-sermon-handoff` | `kv-sermon-builder` when sermon construction is requested next |
| `kv-sermon-audit` | `kv-sermon-builder` for requested revisions after diagnosis |
| `kv-passage-faithfulness-check` | active builder/auditor; usually `kv-sermon-builder` for sermon corrections |
| `kv-source-transparency-check` | active builder/auditor or publication workflow |
| `kv-scripture-formatting-check` | active content owner; often `kv-sermon-builder` during sermon drafting |
| `kv-multi-asset-throttle` | owner of the selected controlling output; `kv-sermon-builder` when sermon is primary |
| `kv-sermon-listening-guide-generator` | terminal content transform; optionally `kv-print-ready-packet-polish` |
| `kv-one-page-handout-generator` | terminal content transform; optionally `kv-print-ready-packet-polish` |
| `kv-print-ready-packet-polish` | terminal content polish; then document/PDF artifact workflow if requested |
| `kv-study-engine` | `kv-study-to-sermon-handoff` or `kv-sermon-builder` after upstream study is settled |

## 8. Packaging Rule for Stage 5

Do not silently duplicate shared Skills into independently drifting variants.

Stage 5 must explicitly choose, for each shared Skill, one of these release strategies:

1. **Bundle canonical identical copy** — only if the plugin packaging system requires self-contained Skills and duplicate Skill names are safe.
2. **Declare/install shared dependency** — preferred if plugin dependency mechanics support it.
3. **Reference shared installed Skill** — acceptable only if installed-instance resolution is reliable and regression-tested.

Do not fork a shared Skill merely to make Sermon Plugin packaging easier.

`kv-study-engine` remains an external upstream dependency and is not to be copied into Sermon Plugin unless a later explicit architecture decision changes that rule.

## 9. Stage 4 Exit Gate

Stage 4 is complete when:

- every dedicated supporting Skill has a named trigger;
- ownership and exclusions are non-overlapping;
- upstream Study authority is classified separately;
- trigger precedence is explicit;
- return-control paths are explicit;
- shared-vs-Sermon-specific status is explicit;
- Stage 5 packaging is prohibited from silently forking shared Skills.

**Stage 4 result: PASS.**

## 10. Next Stage

**Stage 5 — Build the KV Sermon Plugin package.**

Stage 5 should:

1. inspect the proven KV Study Plugin package layout;
2. decide the shared-Skill dependency/bundling mechanism;
3. assemble `kv-sermon-builder` plus required support components and references;
4. preserve the classic GPT untouched;
5. validate the package before any production cutover.
