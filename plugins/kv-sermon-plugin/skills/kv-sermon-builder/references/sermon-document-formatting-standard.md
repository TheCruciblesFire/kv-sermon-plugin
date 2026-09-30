# Sermon Document Formatting Standard


Use this reference only when the user requests a polished finished sermon document, DOCX, print-ready sermon manuscript, formatted sermon export, or equivalent final document treatment.


## Scope


This reference governs sermon-specific presentation. It does not change the sermon's theology, structure, Main Idea, Goal, movement logic, or prose.


The sermon-building Skill owns semantic structure. The document-generation workflow owns technical implementation in DOCX/PDF or another requested file format.


Do not apply these rules to generic ministry packets, student workbooks, leader guides, or unrelated documents unless the user explicitly asks to reuse the sermon-document style.


## Current Semantic Highlight Hierarchy


Preserve the established sermon hierarchy using the following locked muted palette:


- Main points: muted parchment yellow, `#F3E7B3`.
- Subpoints: muted powder blue, `#DCE8F1`.
- Scripture: muted sage green, `#DFEBDD`.
- Transitions: bold and visually distinct with no colored fill.


These semantic roles are inherited from `sermon-composition-standard.md`. The exact colors above are the canonical sermon-document defaults unless the user explicitly requests a different palette.


## Highlight Implementation Requirement


For DOCX generation, implement the three semantic colors with custom RGB/hex shading or fill values. Do not substitute Microsoft Word's built-in highlight palette or constants such as standard Yellow, Bright Green, Turquoise, or Blue. Built-in highlight colors are too saturated for the approved sermon-document style.


Keep sermon text black or near-black over the fills for legibility. The color should function as a subtle navigation system rather than fluorescent emphasis.


A rendered sermon document fails visual QA if any semantic fill appears neon, highly saturated, or materially different from the locked hex values. Correct the implementation before delivery rather than accepting the renderer's bright fallback color.


## Typography and Page Specifications


The following implementation details are intentionally not yet locked because the user has not supplied the final preferences:


- document title font family and size;
- front-matter label and value sizes;
- major movement heading size;
- subpoint heading size;
- body manuscript font family and size;
- Scripture quotation font size and style;
- transition treatment beyond bold/visual distinction;
- Density Warning and Excluded Material treatment;
- margins;
- line spacing;
- paragraph spacing;
- page-number treatment;
- header/footer treatment;
- whether highlight applies to the full line, heading text only, label only, or another bounded span.


Do not invent these unresolved values. Use the user's active Project instructions or explicit request when available. The muted sermon highlight palette is already locked above and is not part of the unresolved list. Once the user approves additional stable defaults, record them here as the canonical sermon-document specification.


## Document-Generation Boundary


When a polished sermon file is requested:


1. Preserve the final approved sermon content and semantic hierarchy.
2. Consult this reference before generating the document.
3. Apply the locked typography, highlight, spacing, margin, and page rules defined here.
4. Use the environment's document-generation capability for implementation.
5. Verify the rendered output before delivery when the document workflow supports visual QA. Confirm that parchment yellow, powder blue, and sage green remain muted and readable rather than fluorescent.
6. If the rendered output substitutes a bright built-in highlight color, correct it to the locked custom shading values before delivery.
7. Do not let formatting changes alter sermon wording, theological emphasis, or structural meaning unless the user explicitly asks for editorial revision.


## Interaction with Other Standards


- `sermon-composition-standard.md` owns sermon structure and semantic roles.
- `voice-and-output-guidance.md` owns prose and preaching voice.
- `prose-normalization-workflow.md` owns manuscript prose normalization.
- `kv-print-ready-packet-polish` remains generic and does not own sermon-specific typography.
- This file owns sermon-specific finished-document presentation once explicit values are approved.


## Current Status


Architecture established. Semantic highlights preserved. The muted color palette and custom-shading implementation are now locked: main points `#F3E7B3`, subpoints `#DCE8F1`, Scripture `#DFEBDD`, and transitions bold with no fill. Font sizes, font families, spacing, margins, page-number rules, and highlight-span extent remain pending user specification.