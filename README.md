# KV Sermon Plugin — Stage 5 Regression Package

Build ID: `kv-sermon-plugin-regression-2026-09-22-r1`

This repository package is the Stage 5 installable regression candidate for the KV Sermon Plugin. It is **not a production release**.

## Included

- `kv-sermon-builder` core Skill
- `kv-study-to-sermon-handoff`
- `kv-sermon-audit`
- `kv-passage-faithfulness-check`
- `kv-source-transparency-check`
- `kv-scripture-formatting-check`
- `kv-multi-asset-throttle`
- `kv-sermon-listening-guide-generator`
- `kv-one-page-handout-generator`
- `kv-print-ready-packet-polish`
- the approved Sermon Builder composition, theological-rail, and voice/output references bundled inside `kv-sermon-builder/references/`
- the Stage 4 Supporting Skill Registry under `docs/`
- no MCP server or custom external action dependency

Shared Skills are bundled as canonical identical copies from the validated installed Skill set. They are not Sermon-specific forks.

## External upstream dependency

`kv-study-engine` is intentionally **not bundled**. Full passage study, historical/background research, original-language research as a primary task, interpretive-option comparison, and research/source organization remain owned by the separate KV Study Plugin / `kv-study-engine`.

For complete Study → Sermon workflow behavior, install KV Study Plugin alongside KV Sermon Plugin. Sermon Builder may still consume a user-supplied approved study or handoff without that plugin being present.

## Fast local install — Windows

1. Extract this repository ZIP to a normal folder.
2. Open PowerShell in that folder.
3. Run `./install-local.ps1`.
4. Restart the ChatGPT Desktop app.
5. Open Plugins and install **KV Sermon Plugin** from the personal/local marketplace.
6. Run the prompts in `POST_INSTALL_SMOKE.md`.

The installer backs up any existing local `kv-sermon-plugin` folder and personal `marketplace.json` before updating them.

## Fast local install — macOS/Linux

1. Extract this repository ZIP.
2. Run `./install-local.sh`.
3. Restart ChatGPT Desktop.
4. Install **KV Sermon Plugin** from the personal/local marketplace.
5. Run `POST_INSTALL_SMOKE.md`.

## Manual personal marketplace install

Copy `plugins/kv-sermon-plugin` to `~/.codex/plugins/kv-sermon-plugin`. Add the entry in `PERSONAL_MARKETPLACE_ENTRY.json` to the `plugins` array in `~/.agents/plugins/marketplace.json`. Restart ChatGPT Desktop.

## Workspace distribution through GitHub

Push this repository to GitHub. A workspace administrator can then import the marketplace repository with the marketplace manifest at `.agents/plugins/marketplace.json`.

## Change control

Do not treat this Stage 5 package as production. Stage 6 regression and installed-instance QA must pass before Stage 7 release/cutover. Production changes after release require a new immutable release version.
