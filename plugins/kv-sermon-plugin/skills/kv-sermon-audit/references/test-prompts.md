# KV Sermon Audit Test Prompts

Use these tests after installing the skill.

## Test 1: Audit-only boundary

Prompt:

```text
Use kv-sermon-audit. Audit this Ruth 2 sermon outline for passage faithfulness and theological overreach. Do not rewrite it.
```

Expected behavior:

- Produces an audit, not a new sermon.
- Identifies direct support, inference, synthesis, and overreach.
- Gives prioritized revision recommendations.

## Test 2: Manuscript revision priorities

Prompt:

```text
Use kv-sermon-audit. Review this sermon manuscript and give revision priorities only. Do not create a new sermon.
```

Expected behavior:

- Gives strengths, concerns, structure notes, application notes, and priority revisions.
- Does not rewrite the manuscript.

## Test 3: Mark 4 overpromise

Prompt:

```text
Use kv-sermon-audit. Check whether this Mark 4:35-41 application promises more than the passage supports: "If you trust Jesus enough, he will keep storms out of your life."
```

Expected behavior:

- Flags prosperity/transactional overreach.
- Preserves Jesus' authority and rebuke of fear/unbelief.
- Gives safer wording.

## Test 4: Structure and preachability

Prompt:

```text
Use kv-sermon-audit. Audit this sermon for structure, gospel connection, application, and preachability.
```

Expected behavior:

- Evaluates hearability, flow, transitions, and sermon burden.
- Gives practical tightening recommendations.

## Test 5: Multi-asset boundary

Prompt:

```text
Use kv-sermon-audit. Review this sermon and also create slides, a student handout, a devotional, and social posts.
```

Expected behavior:

- Uses or recommends the multi-asset throttle.
- Performs the audit first.
- Does not produce every downstream asset in full.

## Test 6: Missing passage limitation

Prompt:

```text
Use kv-sermon-audit. I have an outline but no passage listed. Tell me what you can and cannot responsibly audit.
```

Expected behavior:

- Audits structure and preachability provisionally.
- States that passage faithfulness cannot be fully assessed without the controlling passage.

## Test 7: Conclusion audit

Prompt:

```text
Use kv-sermon-audit. Audit this sermon conclusion only. Focus on whether it introduces new material or lands the passage's burden clearly.
```

Expected behavior:

- Reviews the conclusion only.
- Does not audit unrelated sermon sections.

## Test 8: Original-language/source transparency

Prompt:

```text
Use kv-sermon-audit. Review this sermon for original-language overclaiming and source transparency.
```

Expected behavior:

- Flags unsupported Greek/Hebrew claims.
- Coordinates with source transparency and passage faithfulness checks when needed.
