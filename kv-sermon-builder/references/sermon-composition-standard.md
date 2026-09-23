# Sermon Composition Standard

Use this reference when building a sermon outline, hybrid manuscript, full manuscript, speaking outline, or major sermon revision.

## Primary Aim

Build a sermon that is faithful to the controlling passage, clear enough to follow, structured for live preaching, theologically responsible, and pastorally actionable.

## Normal Scale

- Normal target: 30-40 minutes unless the user specifies another limit.
- Normal structure: 3-5 major movements when appropriate.
- Do not force a three-point structure if the passage moves differently.
- Let genre and passage logic shape the sermon.

## Required Front Matter for Full Builds

1. Title
2. Main Texts
3. Main Idea
4. Goal
5. Introduction
6. Main Movements
7. Conclusion / Response
8. Density Warning
9. Excluded Material

For shorter requested outputs, include only the fields needed for that format.

## Movement Rhythm

Every major movement should accomplish these four functions:

1. Textual Anchor - Show where the movement arises from the passage.
2. Theological Significance - Explain what the text reveals, teaches, warns, promises, or clarifies.
3. Application - Press the text into faith, repentance, obedience, worship, endurance, relationships, witness, hope, or other passage-shaped response.
4. Transition - Carry the hearer naturally into the next movement.

Use headings for these functions only when useful. In a natural manuscript, the functions may be embedded in the prose.

## Big Idea and Goal

The Main Idea should summarize the sermon in a clear, memorable claim governed by the passage.

The Goal should state the intended listener response: what the hearer should see, believe, trust, repent of, obey, endure, worship, or practice because of the passage.

Do not confuse Main Idea with Goal.

## Introductions

A strong introduction should:

- establish the listener's entry point;
- surface the tension, question, need, or burden the passage addresses;
- move toward the text quickly;
- avoid becoming an independent speech before the sermon begins.

Do not let the opening illustration control the sermon.

## Main Movements

Each movement should be distinct, necessary, and traceable to the text.

Prefer passage-derived movement over clever alliteration or imposed symmetry.

Use explanation before application. Do not apply a text whose meaning has not been established.


## Manuscript Prose Rhythm

Use this mode hierarchy:

- **Full manuscript:** paragraph-dominant.
- **Hybrid manuscript:** paragraph-dominant with selective structural or preacher cues.
- **Speaking outline:** line-dominant.

For full and hybrid manuscripts, developed exposition, theological significance, application, transitions, and conclusions should appear mainly in connected paragraphs of roughly 3-6 sentences with varied sentence length. A hybrid manuscript should visually resemble a manuscript with structural cues, not a speaking outline with occasional prose. Do not label or format it as "hybrid manuscript / preaching outline" unless the user explicitly requests both products.

Do not place each ordinary sentence on its own line. Repeated one-sentence paragraphs should trigger a normalization pass unless the separation is intentionally rhetorical. When three or more adjacent short declarative or imperative paragraphs appear in sequence, consolidate them into a coherent spoken paragraph unless they are the single intentional stacked refrain or climactic sequence for that major section. Do not preserve multiple stacked refrains within the same major section.

Use a standalone short sentence or fragment only when it serves a clear rhetorical function such as emphasis, refrain, transition, or climactic response. Do not let stacked imperatives, fragment sequences, or repeated forms such as `Not X. Not Y. Not Z.` become the ordinary cadence of the sermon.

## Editorial Prose Acceptance Workflow

For full and hybrid manuscripts, separate composition from prose normalization.

1. Complete the sermon draft first. Preserve passage logic, Main Idea, Goal, movement order, cautions, application, and Christ/gospel connection.
2. Perform a second editorial pass on the introduction, each movement, each application section, every transition, and the conclusion.
3. Merge adjacent short paragraphs when they advance one thought. A blank line should indicate a real paragraph or structural boundary, not merely a pause in delivery.
4. Convert recurring fragments, stacked imperatives, and sentence-per-line exposition into connected spoken prose. Keep isolated lines only when their visual separation is genuinely rhetorical.
5. Run a stacked-sequence scan. Any run of three or more adjacent short declarative or imperative paragraphs must be merged unless it is the single intentional stacked refrain or climactic sequence for that major section.
6. Re-read each section as if it were printed in a manuscript. If the section would look more like a speaking outline, slide deck, teleprompter stack, or transcript than ordinary prose, rewrite the section before delivery.
7. Do not calculate paragraph percentages during live generation. Regression scoring may use numeric thresholds externally, but the Builder should follow this editorial workflow rather than perform arithmetic on its own draft.

A full or hybrid manuscript is not ready to return until this second pass is complete.

## Application

Application should be passage-specific rather than generic advice.

Use heart-level and life-level application where the text supports it. Application may address worship, repentance, trust, obedience, endurance, relationships, habits, witness, mission, hope, or concrete next steps.

Do not add moral pressure that outruns the gospel or the passage.

## Gospel / Christ Connection

Connect to Christ when warranted by direct text, canonical context, biblical storyline, covenant development, promise/fulfillment, human need and divine provision, or the passage's theological burden.

Do not flatten every passage into the same gospel paragraph. The connection should deepen the passage rather than replace it.

## Conclusion and Response

Bring the sermon back to its Main Idea, Goal, and textual burden.

Match the response to the passage. Do not manufacture emotional intensity.

Possible faithful responses include worship, repentance, trust, obedience, prayer, confession, endurance, hope, reconciliation, witness, rest, mission, or surrender.

## Density Warning

Identify material that may be too dense for live preaching, such as:

- excessive background detail;
- too many cross-references;
- long lexical explanations;
- stacked theological abstractions;
- too many subpoints;
- repeated applications;
- material better suited for a study guide or appendix.

## Excluded Material

Record significant material intentionally left out of the sermon so useful study is not lost. This is especially helpful when trimming a rich study packet into a 30-40 minute sermon.

## Speaking Outline Standard

For speaking outlines:

- use short memory-jogging lines;
- preserve Main Idea, Goal, movement order, key texts, application, and transitions;
- include Scripture cues such as "read vv. 4-6" when useful;
- avoid turning the speaking outline back into a manuscript.

## Semantic Highlighting for Downstream Documents

When a downstream document workflow asks for visual hierarchy, preserve this semantic structure:

- Main points: yellow highlight
- Subpoints: light blue highlight
- Scripture: light green highlight
- Transitions: bold and visually distinct

The document-generation workflow owns implementation; this Skill owns the semantic hierarchy.
