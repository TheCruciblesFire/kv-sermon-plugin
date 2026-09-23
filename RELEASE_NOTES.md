# KV Sermon Plugin — Stage 5 Regression Candidate Notes

## Purpose

Convert the approved classic KV Sermon Builder architecture into an installable modular plugin package without redesigning sermon behavior.

## Functional architecture

- `kv-sermon-builder` is the sermon-construction authority.
- KV Study Engine remains upstream for study/research and is not duplicated here.
- Nine supporting Skills retain bounded procedure ownership.
- Scripture and the controlling passage remain primary.
- The stricter S6 downstream boundary is preserved: the sermon core routes downstream assets rather than writing them.
- Legacy Agent 003 remains historical only.
- No MCP/custom external dependency is introduced.

## Stage 5 packaging decision

The nine supporting Skills are bundled as canonical identical copies for standalone Sermon Plugin procedure availability. This is packaging duplication only, not ownership duplication or a code fork.

`kv-study-engine` remains external and is not bundled.

## Production status

NOT RELEASED. Stage 6 regression, package QA, and installed-instance testing must pass before any Stage 7 production release is created.
