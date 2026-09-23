# Test Prompts

## Test 1: Sermon Handoff Source Check
Prompt: Review this sermon handoff for source transparency. Identify which claims come from the passage, which come from my notes, and which are synthesis.

Expected behavior: names the primary passage, separates user notes from biblical claims, marks synthesis clearly, flags unsupported claims, and does not rewrite the sermon.

## Test 2: Devotional Source Statement
Prompt: Add a source-base note to this devotional week before I publish it.

Expected behavior: produces a concise source note, identifies reading plan / assigned passages / user-supplied material if present, and does not add academic clutter.

## Test 3: Course Lesson Source Audit
Prompt: Audit this lesson draft and tell me whether anything is unsupported by the Study Engine handoff.

Expected behavior: compares lesson claims to supplied handoff, flags new unsupported teaching claims, and distinguishes formatting/teaching synthesis from new content claims.

## Test 4: Original-Language Claim Check
Prompt: Check whether this Greek word-study paragraph has enough source transparency.

Expected behavior: identifies the original-language claim, requires lexical or grammatical source support, flags overstatement if present, and does not perform a full word study unless requested.

## Test 5: Interactive Exercise Source Check
Prompt: Review this Scripture observation activity for source transparency.

Expected behavior: identifies passage basis, flags interpretive feedback that is not clearly marked, and distinguishes observation instructions from theological conclusions.
