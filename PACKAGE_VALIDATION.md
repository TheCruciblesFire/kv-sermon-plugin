# KV Sermon Plugin — Stage 5 Package Validation

**Build ID:** `kv-sermon-plugin-regression-2026-09-22-r1`  
**Manifest version:** `0.5.0`  
**Release state:** NOT RELEASED  
**Gate:** Stage 5 package/static validation

## Result

**PASS — ready to enter Stage 6 regression testing.**

This result validates package structure and deterministic contracts. It does not substitute for Stage 6 behavioral or installed-instance smoke testing.

## Skill validation

**10 / 10 PASS** using the canonical Skill validator.

Validated:

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

## Package contract checks

**54 / 54 PASS**

Verified:

- marketplace JSON parses;
- personal marketplace entry JSON parses;
- plugin manifest JSON parses;
- plugin name is `kv-sermon-plugin`;
- manifest version is `0.5.0`;
- plugin schema URL is declared;
- repository marketplace exposes exactly one Sermon Plugin entry;
- repository marketplace points to `./plugins/kv-sermon-plugin`;
- exactly ten Skills are bundled;
- the bundled Skill set exactly matches the Stage 4 registry decision;
- `kv-study-engine` is not bundled;
- all three core sermon references are present;
- every bundled Skill is byte-for-byte identical to the current canonical installed Skill directory used as the source of truth for this build;
- every Skill contains `SKILL.md` and `agents/openai.yaml`;
- no runtime file contains development-only `/mnt/data` paths;
- no runtime file contains development-only `/home/oai` paths;
- no runtime manifest declares MCP servers, actions, hooks, or connectors;
- Stage 4 Supporting Skill Registry is present;
- post-install smoke set is present;
- no-MCP declaration is present.

## Canonical Skill tree hashes

These hashes identify the exact canonical Skill trees bundled in this Stage 5 package:

- `kv-sermon-builder`: `b8595e3758c6be27f73553eaff351861df5694f46080e0b4ee063aaf77387d2b`
- `kv-study-to-sermon-handoff`: `3b91e67762435a7a6e0455b8ce31cca191dd9a56929784d6e8dcf05ec58392af`
- `kv-sermon-audit`: `12293c6828f49c268ea0cc60d146cb3f71a8e1c971d2d60718717f85999aeb2f`
- `kv-passage-faithfulness-check`: `b44415d630a96317d604b41a600cf76239486ed2fcc165118360cb1bbf9d162c`
- `kv-source-transparency-check`: `e6ef90f5ceb253893a8047c5c05bd3169e8e44c1e883595f38043b2a6590b4b4`
- `kv-scripture-formatting-check`: `a98340d0997f4d6a8813581b369ecaaea4387a8a65845e92b68921e098eac734`
- `kv-multi-asset-throttle`: `e2316338ca07e1247d4cc93abc5d5396b8ee472c368e4e1a33d5dcfbc2095f26`
- `kv-sermon-listening-guide-generator`: `a6d421e973949a2b97ec9377bd53cb6a662b799aea3ac69e65361500533949b6`
- `kv-one-page-handout-generator`: `46fe0321c8a3b7268136ad8109969917c1d4f86c551bf1c8254c216523f90350`
- `kv-print-ready-packet-polish`: `f671ac4f2efb6c8e8237c11b1d454ee151188ada1e1d07d11f1c66b166376644`

## Installer test

`install-local.sh` was executed against an isolated temporary HOME.

**PASS**

Verified:

- plugin copied to the expected local plugin path;
- personal marketplace directory was created;
- `marketplace.json` was created successfully;
- marketplace entry identifies `kv-sermon-plugin`;
- local path is `./.codex/plugins/kv-sermon-plugin`;
- the real user environment was not modified by this installer test.

The PowerShell installer is included by direct adaptation of the proven KV Study Plugin r3 installer pattern. A PowerShell runtime was not available in this build container, so Windows execution remains an installed-environment check rather than a Stage 5 deterministic check.

## Known dependency condition

`kv-study-engine` is intentionally external. Stage 6 must verify both conditions:

1. Sermon Plugin behaves correctly when KV Study Plugin is installed alongside it.
2. If KV Study Plugin is absent, Sermon Plugin does not fabricate upstream study authority and instead identifies the missing upstream route appropriately.

## Stage 5 exit decision

**PASS.** Freeze this package and use it as the Stage 6 regression input. Do not promote it to production until Stage 6 behavioral, package, and installed-instance gates pass.
