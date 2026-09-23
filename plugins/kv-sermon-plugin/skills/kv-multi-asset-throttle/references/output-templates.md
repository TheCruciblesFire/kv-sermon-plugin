# Output Templates

## Full Throttle Response

```markdown
## Scope Control

You requested multiple assets:

1. [Asset]
2. [Asset]
3. [Asset]

The controlling output should be: **[Primary Asset or Master Handoff]**.

I will produce **[Primary Asset or Master Handoff]** now and give brief downstream notes for the other assets.

## Primary Output

[Produce the primary asset or source-controlled handoff.]

## Downstream Handoff Notes

### [Asset 2]
- Source base to preserve:
- What to avoid:
- Recommended next workflow:

### [Asset 3]
- Source base to preserve:
- What to avoid:
- Recommended next workflow:

## Recommended Build Order

1. [Step]
2. [Step]
3. [Step]
```

## Gentle Throttle Response

```markdown
This request crosses several output families. The safest sequence is to build the foundation first, then generate downstream assets from the approved source.

Recommended first output: **[Primary Output]**.

After that, the best order is:

1. [Asset]
2. [Asset]
3. [Asset]
```

## Master Handoff Response

```markdown
## Master Handoff

### Source Base
[Name source material.]

### Central Claim / Burden
[Summarize controlling idea.]

### Must Preserve
- [Item]
- [Item]

### Must Avoid
- [Item]
- [Item]

### Asset Map
| Asset | Recommended Workflow | Notes |
|---|---|---|
| [Asset] | [Workflow] | [Boundary note] |

### Recommended Build Order
1. [Step]
2. [Step]
3. [Step]
```

## Build Order Response

```markdown
## Recommended Build Order

1. **[Primary foundation]** — [Why it comes first.]
2. **[Next asset]** — [What it should use as source.]
3. **[Next asset]** — [Boundary note.]
4. **[Final delivery/export]** — [Delivery note.]

Do not build downstream assets until **[source/foundation]** is approved.
```
