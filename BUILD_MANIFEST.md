# KV Sermon Plugin — Stage 5 Build Manifest

**Build ID:** `kv-sermon-plugin-regression-2026-09-22-r1`  
**Stage:** 5 — Plugin Build  
**Release state:** NOT RELEASED  
**Manifest version:** `0.5.0`  
**Purpose:** Frozen installable package for Stage 6 regression and installed-instance testing.

## Runtime payload

Exactly ten Skills are bundled:

1. `kv-sermon-builder`
2. `kv-study-to-sermon-handoff`
3. `kv-sermon-audit`
4. `kv-passage-faithfulness-check`
5. `kv-source-transparency-check`
6. `kv-scripture-formatting-check`
7. `kv-multi-asset-throttle`
8. `kv-sermon-listening-guide-generator`
9. `kv-one-page-handout-generator`
10. `kv-print-ready-packet-polish`

## Shared-Skill packaging decision

Stage 4 allowed three strategies. Stage 5 selects **Bundle canonical identical copy** because the proven KV Study Plugin marketplace pattern is self-contained and its manifest exposes no separate dependency declaration mechanism.

Shared Skills are copied byte-for-byte from the current validated canonical installed Skill directories. No Sermon-specific fork is permitted.

## Upstream Study dependency

`kv-study-engine` is excluded from the Sermon Plugin runtime payload. It remains a separate upstream dependency and authority. Full upstream study requires KV Study Plugin or another explicit approved Study Engine path.

## Core references bundled

Inside `skills/kv-sermon-builder/references/`:

- `sermon-composition-standard.md`
- `theological-rails.md`
- `voice-and-output-guidance.md`

## Non-runtime documentation

- `docs/supporting-skill-registry.md`
- `README.md`
- `POST_INSTALL_SMOKE.md`
- `PACKAGE_VALIDATION.md`
- `NO_MCP_DECLARATION.md`
- local install scripts and personal marketplace entry

## Excluded

- `kv-study-engine`
- legacy Agent 003 active persona/instructions
- Agent 007 / Agent 010 active personas
- Student Packet / Interactive Exercise Builder legacy personas
- superseded Sermon Builder configurations
- permissive downstream-generation wording
- project-specific sermons and sermon series
- MCP/custom external tooling

## Rollback posture

The classic KV Sermon Builder GPT remains untouched and is the rollback/reference path during Stage 5 and Stage 6. No production plugin cutover occurs in this stage.
