---
name: kv-passage-faithfulness-check
description: use this skill to audit whether ministry outputs, claims, applications, sermon points, devotionals, lessons, packets, handoffs, or interactive exercises are faithful to a controlling biblical passage. trigger when checking passage faithfulness, theological overreach, forced frameworks, moralism, prosperity framing, speculative claims, weak gospel connections, original-language overclaiming, or observation prompts that smuggle interpretation. use for requests such as "is this faithful to the passage," "check for overreach," "audit this sermon point," "does this force the divine council theme," or "revise unsupported application." do not use for full passage studies, grammar-only edits, or citation/source-disclosure-only tasks.
---

# KV Passage Faithfulness Check

## Purpose
Use this skill to evaluate whether a ministry output stays faithful to the controlling biblical passage. The goal is textual accountability: do not let applications, sermon moves, devotionals, lessons, handoffs, exercises, or theological frameworks outrun what the passage supports.

This skill does **not** replace full exegesis, GPT-specific theological guardrails, or source-transparency review. It answers: **Is this claim warranted by the passage, and how should it be corrected if not?**

## Quick Decision
Choose one mode:

1. **Short Claim Check**: Answer a narrow question about one claim, sermon point, application, or prompt.
2. **Passage Faithfulness Audit**: Review a draft or excerpt against the controlling passage.
3. **Overreach / Framework Check**: Evaluate whether a theological framework or biblical-theological connection is being forced onto the passage.
4. **Revision Guidance**: Provide corrected wording for weak, overstated, or distorted claims.

Keep the output proportionate. Do not turn an audit into a full commentary, sermon rewrite, or passage study unless the user explicitly asks.

## Workflow

### 1. Identify the controlling text and output context
State the controlling passage and classify the material as a sermon, study, devotional, course lesson, student packet, leader guide, interactive exercise, handoff, theological claim, or other ministry output.

If no controlling text is supplied, proceed only if the user's claim gives enough context. Add a caveat or ask for the passage when the audit would otherwise be irresponsible.

### 2. Extract the major claims or movements
Review by claim unit rather than every sentence. Useful units include: main idea, sermon point, application, theological synthesis, gospel connection, background claim, original-language claim, activity prompt, answer feedback, or handoff instruction.

### 3. Classify each claim's support level
Use these support levels:

- **Direct textual support**: the passage explicitly says or clearly shows this.
- **Strong contextual inference**: the passage strongly supports this through context, structure, narrative logic, or argument flow.
- **Responsible biblical-theological synthesis**: broader Scripture supports the connection, but it is not the main point of this passage alone.
- **Weak support / possible overreach**: the claim may be true elsewhere but is not well supported here.
- **Speculation / distortion**: the claim outruns, contradicts, flattens, sensationalizes, manipulates, or misuses the passage.

Consult `references/support-levels.md` when more precise classification is needed.

### 4. Explain the assessment
Give concise reasoning tied to the passage, immediate context, genre, argument flow, or appropriate canonical context. Avoid using a preferred framework as the controlling authority.

### 5. Flag relevant risk types
Name risks plainly when present:

- forced framework
- unsupported inference
- moralism
- prosperity or transactional framing
- therapeutic drift
- fear/shame leverage
- speculative theology
- flattened gospel connection
- original-language overclaiming
- observation/interpretation leakage
- background claim treated as textual proof
- user assumption overriding the passage

Use `references/risk-checklist.md` for detailed risk cues.

### 6. Provide faithful revision guidance
For weak or distorted claims, provide usable corrected wording. Preserve what the passage truly supports. Do not add new unsupported theology while correcting the old claim.

### 7. Give a final recommendation
End with one of these outcomes:

- **Pass as written**
- **Pass with minor qualification**
- **Revise before use**
- **Remove or replace**
- **Needs deeper passage study before use**

Use the appropriate format from `references/output-templates.md`.

## Boundaries
Do not:

- produce a full passage study unless requested
- rewrite the whole sermon, devotional, lesson, packet, or exercise unless requested
- treat the user's preferred theological framework as controlling
- flatten the passage into generic gospel language
- use secondary background material as explicit textual proof
- reject legitimate biblical-theological synthesis merely because it goes beyond one verse
- force divine council, covenant, kingdom, typology, sacred space, eschatology, or spiritual warfare themes into unrelated texts
- make every issue about a favorite framework
- make unsourced historical, cultural, or original-language claims while auditing
- perform only a citation/source-use audit when the issue is passage faithfulness

## Relationship to Other Skills
Use this skill alongside, but do not merge it with:

- **KV Source Transparency Check**: use when the question is where claims came from or whether source categories are disclosed.
- **Scripture Formatting / CSB / BLB Check**: use when the question concerns quotation, attribution, references, or links.
- **Multi-Asset Throttle**: use when many downstream assets could spread an untested claim.

## Test Expectations
When testing this skill, verify that it:

- distinguishes direct textual claims from inference and synthesis
- flags forced frameworks without rejecting responsible canonical connections
- catches moralism, prosperity framing, and generic application
- protects passage genre and local argument flow
- identifies original-language and background overclaims
- prevents observation prompts from preloading interpretation
- gives concise, usable replacement wording
- avoids becoming a full passage study or asset rewrite
