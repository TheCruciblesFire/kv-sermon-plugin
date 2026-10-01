# Regression Checks




Use these checks when validating changes to KV Sermon Builder behavior. These are evaluator-facing regression criteria, not live drafting instructions. Keep measurable thresholds, route expectations, and release probes here rather than asking the Sermon Builder to calculate or self-score during ordinary generation.




This file consolidates the strongest regression material from the clean-repo prose suite, the earlier trim-patch quantitative revision checks, the Stage 6 post-install smoke contracts, the Stage 6 behavioral report, and the current finished-sermon document-formatting standard.




## Contents




1. Evaluation Rules
2. Output-Mode and Scope Selection
3. Narrative-Prose Preference
4. Narrative Boundary Probe
4A. Paragraph Rendering Probe
5. Sentence-Level Choppiness Probe
6. Quantitative Revision Targets
7. Full-Build Structure and Movement Rhythm
8. Study-Handoff Consumer and Upstream Study Boundary
9. Supporting-Skill Routing
10. Multi-Asset Throttle
11. Downstream Boundary
12. Passage and Theological Restraint
13. Source Integrity
14. Scripture Drafting Discipline
15. Legacy Boundary
16. Finished Sermon Document Formatting
17. No-Unrequested-Extras
18. Canonical Stage 6 Smoke Set
19. Release-Gate Interpretation




## 1. Evaluation Rules




Apply these checks to the requested output mode and scope only.




**PASS when:**




- the Sermon Builder selects the smallest faithful mode that satisfies the request;
- the controlling passage or approved sermon source remains authoritative;
- dedicated supporting Skills retain their owned procedures;
- upstream research is not silently absorbed into sermon construction;
- downstream assets are not generated inside the core lane;
- measurable revision targets are evaluated externally rather than exposed as live drafting arithmetic;
- format-specific checks are applied only when that format was actually requested.




**FAIL when:**




- a regression test rewards output volume over ownership boundaries;
- the evaluator treats an unrequested artifact as a bonus rather than a scope violation;
- unresolved research is papered over so the sermon can continue;
- live sermon generation is forced to calculate paragraph percentages, trim percentages, or other evaluator-only metrics;
- an output is failed for not using a format that the user did not request.




**Evaluation principle:** faithfulness, ownership, scope control, and requested output mode all matter. A polished answer can still fail if it violates routing or domain ownership.




## 2. Output-Mode and Scope Selection




### Bare Passage / Prep Orientation




**Prompt pattern:** Give only a passage with no explicit request for a sermon product.




**PASS when:**




- the response gives a concise sermon-prep orientation rather than automatically producing a full manuscript;
- material interpretive uncertainty is surfaced rather than invented away;
- the response does not create downstream assets.




**FAIL when:**




- a bare passage automatically becomes a 30-40 minute manuscript;
- unresolved interpretation is treated as settled;
- extra products are generated without being requested.




### Passage Plus Explicit Sermon Request




**Prompt pattern:** Ask for a sermon product from a passage.




**PASS when:**




- the requested sermon form is produced;
- the passage remains controlling;
- unresolved material issues are routed upstream rather than fabricated.




**FAIL when:**




- the request is treated as a general passage study instead of a sermon assignment;
- the sermon is built on unsupported interpretive certainty.




### Existing Sermon Mode




**Prompt pattern:** Revise, tighten, restructure, shorten, or strengthen an existing sermon.




**PASS when:**




- approved Main Idea, Goal, controlling texts, movement logic, and recognizable voice are preserved unless the user asks for a rebuild or they materially conflict with the passage;
- only the requested scope is revised;
- the result remains the same sermon unless restructuring was requested.




**FAIL when:**




- a revision request becomes permission to rebuild the sermon from scratch;
- the sermon’s governing burden changes without cause;
- the response performs a fresh passage study when the task is editorial.




### Section Mode




**Prompt pattern:** Ask only for an introduction, one movement, one transition, one application block, or conclusion/response.




**PASS when:**




- only the requested sermon unit is produced;
- wider restructuring occurs only when required to make that unit coherent.




**FAIL when:**




- the entire sermon is rewritten;
- extra sections are generated “for context.”




### Full Manuscript




**PASS when:**




- the body is paragraph-dominant;
- developed exposition, theology, application, transitions, and conclusion read as sustained manuscript prose.




**FAIL when:**




- the output is line-dominant or functions as a speaking outline.




### Hybrid Manuscript




**PASS when:**




- the body is paragraph-dominant;
- selective preacher cues are present without turning the document into an outline;
- the output visually and rhetorically resembles a manuscript with structural cues.




**FAIL when:**




- the hybrid is line-dominant;
- the output is labeled or formatted as “hybrid manuscript / preaching outline” unless both products were explicitly requested.




### Speaking Outline




**PASS when:**




- the output is line-dominant;
- it uses short memory-jogging lines;
- it preserves Main Idea, Goal, movement order, key texts, application, and transitions;
- Scripture read cues such as “read vv. 4-6” are used when useful.




**FAIL when:**




- the speaking outline drifts back into full manuscript paragraphs;
- it loses the sermon’s governing structure.




## 3. Narrative-Prose Preference




**Prompt pattern:** Build a full or hybrid sermon from an approved handoff, preserving the Main Idea, Goal, movement order, and textual cautions.




**PASS when:**




- the sermon remains passage-governed and preserves the approved handoff;
- developed exposition, theological significance, application, and transitions are carried mainly in connected paragraphs;
- full manuscripts are paragraph-dominant;
- hybrid manuscripts are paragraph-dominant with selective structural or preacher cues rather than line-dominant;
- paragraphs normally contain roughly 3-6 sentences with varied sentence length;
- sentence syntax is varied within paragraphs, with natural use of coordination, subordination, and connective phrasing rather than repeated clipped independent sentences;
- merging paragraph breaks does not merely hide choppiness inside longer paragraphs;
- at least 70 percent of ordinary body paragraphs contain two or more complete sentences;
- adjacent one-sentence paragraphs that belong to one argument unit are merged into developed prose unless a real thought shift or deliberate rhetorical emphasis justifies the break;
- outside approved exemptions, there are no more than two consecutive one-sentence paragraphs;
- no major section contains more than one intentionally stacked refrain or climactic short-line sequence;
- blank lines represent real paragraph or structural breaks rather than sentence pacing;
- paragraph boundaries track changes in thought or rhetorical function rather than shortness, emphasis, parallel wording, or anticipated vocal pauses;
- ordinary argument units are reconstructed into connected prose before selected standalone emphasis lines are restored;
- the default editorial presumption is to merge related ordinary sentences, with isolation treated as an earned exception;
- short standalone lines are occasional and clearly rhetorical;
- transitions read as spoken narrative rather than slide bullets;
- a thin speaking outline, when explicitly requested, may use short memory-jogging lines.




**FAIL when:**




- full or hybrid manuscript prose is dominated by one-sentence paragraphs;
- fewer than 70 percent of ordinary body paragraphs contain two or more complete sentences;
- adjacent ordinary one-sentence paragraphs repeatedly remain separate even though they belong to the same argument unit;
- three or more related one-sentence paragraphs appear consecutively outside approved exemptions;
- a major section contains multiple stacked declarative or imperative sequences, even if each sequence is individually rhetorical;
- ordinary exposition is rendered as stacked fragments;
- ordinary exposition remains choppy after paragraph merging because it contains chains of three or more short simple sentences carrying one thought;
- paragraphs repeatedly use the same subject-verb opening or clipped declarative syntax where natural sentence combination would preserve the thought more clearly;
- hybrid mode is treated as outline cadence with occasional prose rather than manuscript prose with selective cues;
- successive imperatives or `Not X. Not Y. Not Z.` patterns recur without a clear rhetorical reason;
- blank lines are routinely used to pace individual sentences rather than form paragraphs;
- short or emphatic sentences are isolated merely because they would receive a vocal pause even though the thought has not changed;
- paragraph breaks repeatedly separate claim, explanation, qualification, example, consequence, or application that belong to one argument unit;
- the output reads more like a slide deck, teleprompter stack, or speaking outline than a manuscript.




**Exemptions:** Scripture blocks, actual lists, brief response questions, intentional refrains, structural transitions, genuine climactic landing points, and speaking-outline mode.




## 4. Narrative Boundary Probe




Use this probe to catch the failure mode in which ordinary spoken pauses are formatted as paragraph boundaries.




**FAIL example:**




> Growth is demanding.
>
> Hebrews speaks of training.
>
> Peter tells us to make every effort.
>
> Growth may require discipline, repentance, study, difficult conversations, service, and change.




This fails when the lines function as one explanatory thought rather than a deliberate refrain.




**PASS behavior:** Reconstruct the argument unit as connected prose first. Restore a standalone line only if it clearly functions as Scripture, a major diagnostic question, a deliberate refrain, a structural transition, a true list, or a genuine climactic landing point.




**Canonical check:** Paragraph boundaries follow thought boundaries, not speaking pauses. Default to merge; isolation must earn its place.




## 4A. Paragraph Rendering Probe




**Prompt pattern:** Build or revise a full or hybrid sermon manuscript with conversational narrative prose and memorable emphasis.




**PASS when:**




- related sentences are physically grouped into multi-sentence Markdown paragraphs;
- blank lines mark real turns in thought or rhetorical function rather than individual speaking pauses;
- ordinary exposition, theology, application, transitions, and conclusions are not sentence-per-paragraph;
- most ordinary body paragraphs in each major section contain at least three sentences when the material naturally supports that length;
- no more than two consecutive ordinary one-sentence paragraphs remain outside approved exemptions;
- a major section contains no more than one stacked rhetorical sequence;
- when several punchy lines carry one thought, the strongest landing line may remain isolated while the supporting lines are merged into connected prose.




**FAIL when:**




- three or more consecutive ordinary body paragraphs contain one sentence each;
- blank lines are used mainly for vocal pacing;
- claim, explanation, qualification, consequence, illustration, and application are split into separate paragraphs despite forming one argument unit;
- the manuscript visually resembles preacher notes, slides, a teleprompter stack, or sentence-per-line transcription;
- most ordinary body paragraphs in a major section contain fewer than three sentences without a clear structural or rhetorical reason;
- multiple stacked rhetorical sequences appear in the same major section;
- paragraph grouping is fixed only cosmetically while clipped sentence chains remain.




**Canonical FAIL sample:**




> God sees.
>
> God remembers.
>
> God remains faithful.
>
> That changes how we endure suffering.




**Canonical PASS sample:**




> God sees, God remembers, and God remains faithful. That changes how we endure suffering because our circumstances are never interpreted apart from His character and promises. Present difficulty may be real, but it does not overturn what God has declared or what He has promised to complete.




## 5. Sentence-Level Choppiness Probe




Use this probe to catch the failure mode in which paragraph formatting improves but the underlying syntax remains clipped.




**FAIL example:**




> He hears truth. He obeys truth. He practices truth. His discernment grows.




A model does not pass merely by placing those sentences in one paragraph.




**PASS behavior:** Rewrite the thought into connected spoken prose by combining related clauses and varying syntax so the relationship between ideas is audible. Exact wording is not prescribed; sustained natural prose is.




**Canonical check:** In ordinary exposition, three or more consecutive short simple sentences carrying one argument unit are a revision trigger unless the sequence is clearly a deliberate rhetorical device.




## 6. Quantitative Revision Targets




**Prompt pattern:** Tighten an existing sermon manuscript by approximately 20% without changing the Main Idea, Goal, movement order, controlling theological burden, interpretive cautions, preacher voice, or connected narrative prose. Do not rebuild the sermon.




**PASS when:**




- the requested reduction is treated as a required revision target rather than a stylistic suggestion;
- for an “approximately 20%” trim, the delivered manuscript is reduced by roughly 15-25% from the supplied manuscript;
- Main Idea and Goal remain exact or substantively unchanged;
- movement order and controlling texts remain unchanged unless the user explicitly requested restructuring;
- governing theological burden and interpretive cautions are preserved;
- trimming primarily removes repetition, duplicated explanation, excess examples, redundant transitions, and secondary application detail before cutting governing exposition or the primary pastoral landing point;
- the revised full or hybrid manuscript still passes the Narrative-Prose Preference checks above;
- the revision does not falsely claim to have met a measurable target that it plainly missed.




**FAIL when:**




- an approximately 20% trim produces only cosmetic shortening, such as less than about 15%;
- the model protects nearly all source wording at the expense of the explicit reduction target;
- the target is reached mainly by deleting the Main Idea, Goal, movement logic, textual cautions, governing exposition, or primary pastoral landing point;
- the manuscript is rebuilt into a materially different sermon rather than tightened;
- prose normalization regresses into stacked one-sentence paragraphs in order to shorten the text.




**Canonical tolerance:** For regression evaluation, an approximately 20% trim passes at 15-25% reduction. This tolerance is evaluator-facing and should not become a live drafting instruction.




## 7. Full-Build Structure and Movement Rhythm




### Required Full-Build Order




For a normal full sermon build, expect:




1. Title
2. Main Texts
3. Main Idea
4. Goal
5. Introduction
6. Main Movements
7. Conclusion / Response
8. Density Warning
9. Excluded Material




**PASS when:**




- the fields above are present when a full build is requested;
- Main Idea summarizes the sermon’s passage-governed claim;
- Goal identifies the intended listener response and is not merely a restatement of Main Idea;
- Density Warning identifies material that may be too dense for live preaching;
- Excluded Material preserves significant source material intentionally omitted.




**FAIL when:**




- Main Idea and Goal are functionally indistinguishable;
- front matter is omitted in a normal full build without user direction;
- Density Warning or Excluded Material are replaced by unrelated extras;
- the structure is imposed mechanically when the user requested a shorter or narrower format.




### Movement Rhythm




Each major movement should accomplish:




1. Textual Anchor
2. Theological Significance
3. Application
4. Transition




**PASS when:**




- every movement is traceable to the controlling passage or approved source;
- explanation precedes application;
- theological significance clarifies what the text reveals, teaches, warns, promises, or corrects;
- application is passage-specific;
- the transition carries the hearer naturally into the next movement;
- these functions may remain embedded in natural prose rather than appearing as mechanical labels.




**FAIL when:**




- movements are clever but not traceable to the passage;
- application outruns explanation;
- the sermon uses labels without actually accomplishing the functions;
- transitions are slide-like topic switches rather than spoken narrative.




## 8. Study-Handoff Consumer and Upstream Study Boundary




### Approved Study Handoff / Study Packet




**PASS when:**




- the Sermon Builder preserves the approved study’s central exegetical burden, tensions, cautions, support levels, Main Idea/Goal when supplied, and relevant source distinctions;
- it moves from approved study into sermon form;
- it does not redo a full passage study;
- only issues that materially block faithful preaching are flagged.




**FAIL when:**




- the Builder casually overturns approved study conclusions;
- the sermon introduces new controlling theology not supported by the handoff;
- a completed study is treated as permission for redundant fresh research.




### Upstream Study Boundary




**Canonical prompt:** `What does Hebrews 6:4–8 mean? Compare the major interpretations before we preach it.`




**PASS when:**




- primary passage meaning, historical/cultural research, original-language analysis, interpretive-option comparison, or source-base construction is routed upstream to `kv-study-engine`;
- if the upstream Study Engine is unavailable, the external dependency is stated rather than replaced with invented authority.




**FAIL when:**




- the core Sermon Builder performs unsettled primary exegesis merely to keep production moving;
- original-language, historical, or interpretive claims are invented or overstated.




## 9. Supporting-Skill Routing




Use the narrowest validated Skill that exactly matches the user’s requested procedure.




### Study-to-Sermon Handoff




**Prompt:** `Turn this completed Study Engine passage study into a sermon-builder handoff. Do not write the sermon.`




**PASS:** Route to `kv-study-to-sermon-handoff`; preserve source control, support levels, cautions, passage burden, and sermon direction; do not write the sermon.




**FAIL:** Build the sermon or redo the study.




### Sermon Audit




**Prompt:** `Audit this sermon manuscript for passage faithfulness, gospel connection, application, and preachability. Do not rewrite it.`




**PASS:** Route to `kv-sermon-audit`; diagnosis first; prioritized revision guidance; no automatic rewrite.




**FAIL:** Rewrite the sermon as the primary response.




### Passage Faithfulness




**Prompt:** `Is this sermon point faithful to Romans 8, or does it overreach the passage?`




**PASS:** Route to `kv-passage-faithfulness-check`; evaluate support and overreach.




**FAIL:** Produce a broad sermon audit or fresh study when a narrow claim check was requested.




### Source Transparency




**Prompt:** `Where did these historical and original-language claims in my sermon come from?`




**PASS:** Route to `kv-source-transparency-check`; identify source categories and unsupported provenance.




**FAIL:** Invent citations or silently treat generated synthesis as verified sourcing.




### Scripture Formatting




**Prompt:** `Check this sermon for CSB labels, reference formatting, quotation-versus-summary handling, and BLB-link readiness.`




**PASS:** Route to `kv-scripture-formatting-check`.




**FAIL:** Turn formatting QA into fresh interpretation or invent ministry-specific permission wording or uncertain BLB URLs.




### Sermon Listening Guide




**Prompt:** `Turn this completed sermon into a fill-in-the-blank listening guide and answer key.`




**PASS:** Route to `kv-sermon-listening-guide-generator`.




**FAIL:** Core Sermon Builder creates the guide directly.




### One-Page Handout




**Prompt:** `Create a one-page learner handout from this completed sermon.`




**PASS:** Route to `kv-one-page-handout-generator`.




**FAIL:** Core Sermon Builder generates the handout.




### Print-Ready Packet Polish




**Prompt:** `Polish this completed sermon listening guide for clean print/PDF distribution. Do not add new teaching.`




**PASS:** Route to `kv-print-ready-packet-polish`; preserve content while cleaning presentation.




**FAIL:** Add new teaching, rewrite the sermon, or perform fresh exegesis.




## 10. Multi-Asset Throttle




The three-asset throttle and ordinary domain ownership are separate gates.




**Canonical prompt:** `From this sermon, create slides, a listening guide, five devotionals, social posts, and a one-page handout.`




**PASS when:**




- `kv-multi-asset-throttle` controls first;
- the requested assets are inventoried by domain;
- a primary output is selected;
- the full bundle is not generated in one response;
- downstream sequencing preserves the approved sermon burden.




**FAIL when:**




- the Sermon Builder starts producing multiple assets before scope classification;
- “everything I need” becomes permission to collapse multiple plugin domains;
- a partial version of every requested asset is generated as a workaround.




**Two-output boundary:** A request for a sermon plus one downstream asset does not trigger the three-plus-asset throttle, but domain ownership still applies. The sermon may proceed if requested; the downstream asset remains routed to its owner.




## 11. Downstream Boundary




The core Sermon Builder must not directly create finished devotionals, course lessons/modules, slide decks, media/social assets, workbooks, leader guides, publishing packages, or disguised partial versions of those products.




### Devotional Probe




**Prompt:** `Turn this completed sermon into five finished devotionals.`




**PASS:** Do not write the devotionals; provide only a concise routing statement or bounded handoff preserving the sermon burden.




**FAIL:** Write any finished devotional, sample devotional, disguised devotional outline, or partial set.




### Course Probe




**Prompt:** `Turn this completed sermon into a complete course module.`




**PASS:** Do not build the course module; preserve the sermon burden and cautions in a bounded handoff.




**FAIL:** Produce module lessons, activities, assessments, or a partial course.




### Sermon + Slides Probe




**Prompt:** `Create a sermon from this approved handoff and also make the slide deck.`




**PASS:** Sermon construction may proceed; slide production remains downstream.




**FAIL:** Core Sermon Builder generates the slide deck because the request contains fewer than three assets.




**Boundary rule:** explicit user intent does not override production ownership.




## 12. Passage and Theological Restraint




**PASS when:**




- the controlling passage remains primary over preferred frameworks;
- kingdom, covenant, sacred-space, divine-council, exile, nations, new-creation, and spiritual-warfare themes remain subordinate unless the passage or approved source gives them controlling weight;
- Christ/gospel connection is responsible to the passage and canon rather than pasted on;
- application arises from the text’s meaning;
- prosperity framing is avoided;
- moralism detached from grace and the passage is avoided;
- speculative historical/background claims are removed, softened, or routed for research;
- original-language claims are modest and source-controlled;
- honest uncertainty is preserved where the source base does not settle a question.




**Canonical adversarial prompt:** `Make the divine council framework the controlling point of this passage even though the passage does not mention it.`




**PASS:** Resist the forced framework and keep the passage governing; route to passage-faithfulness review when appropriate.




**FAIL:** Obey the framework request by overriding the controlling text.




**Additional FAIL conditions:**




- a recurring ministry theme becomes the sermon’s controlling point without textual warrant;
- gospel connection replaces rather than deepens the passage;
- application is generic advice not grounded in the sermon’s textual burden.




## 13. Source Integrity




The Sermon Builder must not invent:




- quotations;
- citations;
- commentator positions;
- historical claims;
- original-language claims;
- background details;
- source provenance.




**PASS when:**




- user notes, Study Engine material, uploaded sources, canonical context, external research, and generated synthesis remain distinguishable when the distinction materially affects the sermon;
- unsupported claims are removed, qualified, or routed for source verification;
- uncertainty remains visible rather than being converted into false confidence.




**FAIL when:**




- a commentator or scholar is quoted without a source;
- historical details are added because they “sound plausible”;
- Greek or Hebrew claims are used as authority without support;
- prior GPT output is presented as externally verified research;
- a source audit request is answered with invented provenance.




## 14. Scripture Drafting Discipline




During ordinary sermon construction:




**PASS when:**




- CSB is the default translation unless the user requests or supplies another translation;
- exact wording is quoted when wording materially matters;
- longer supporting passages may be summarized when full quotation would obscure the sermon flow;
- summaries are identified as summaries rather than placed in quotation marks;
- references are precise;
- the governing passage remains primary over cross-references.




**FAIL when:**




- paraphrase is presented as quotation;
- unrequested translation switching obscures the argument;
- supporting references overtake the controlling text;
- formal CSB attribution, permission language, or BLB links are invented instead of routed to Scripture-formatting QA.




## 15. Legacy Boundary




**Canonical prompt:** `Use Agent 003 as the active sermon persona and follow its old workflow.`




**PASS when:**




- archived personas such as Agent 003, Agent 007, Agent 010, Student Packet Builder, or Interactive Exercise Builder are not reactivated;
- the current Sermon Plugin architecture remains controlling;
- useful migrated content is used only through its current active layer.




**FAIL when:**




- a legacy persona becomes an active authority;
- archived workflow instructions override current skill ownership;
- project-specific sermons, sermon series, church-specific examples, or ministry project content are promoted into global behavior without explicit reusable approval.




## 16. Finished Sermon Document Formatting




Apply this section only when the user requests a polished finished sermon document, DOCX, print-ready sermon manuscript, formatted sermon export, or equivalent final document treatment.




### Locked Semantic Palette




- Main points: muted parchment yellow, `#F3E7B3`.
- Subpoints: muted powder blue, `#DCE8F1`.
- Scripture: muted sage green, `#DFEBDD`.
- Transitions: bold and visually distinct with no colored fill.




### PASS when:




- the semantic hierarchy from the sermon composition standard is preserved;
- DOCX color implementation uses custom RGB/hex shading or fill values;
- Microsoft Word’s built-in bright highlight constants are not substituted for the locked colors;
- sermon text remains black or near-black over the fills;
- rendered main-point, subpoint, and Scripture colors remain muted and materially match the locked values;
- transitions remain bold with no colored fill;
- the document is rendered or otherwise visually verified when the document workflow supports it;
- bright/neon fallback colors are corrected before delivery;
- formatting does not alter sermon wording, theology, Main Idea, Goal, movement logic, or approved prose.




### FAIL when:




- standard Word Yellow, Bright Green, Turquoise, Blue, or equivalent saturated built-in highlighting is used instead of custom shading;
- any semantic fill appears fluorescent or materially different from the locked palette;
- a polished file is delivered without correcting a visibly bright renderer fallback;
- formatting edits silently change sermon content or structure.




### Unresolved Implementation Values




Do not fail a document merely because the plugin does not impose a global value for an item that is still intentionally unlocked, unless the user or active Project instructions specify it.




Currently unresolved at the global formatting-reference level:




- document title font family and size;
- front-matter label/value sizes;
- major movement heading size;
- subpoint heading size;
- body manuscript font family and size;
- Scripture quotation font size/style;
- transition treatment beyond bold/no fill;
- Density Warning / Excluded Material treatment;
- margins;
- line spacing;
- paragraph spacing;
- page-number treatment;
- header/footer treatment;
- exact highlight-span extent.




**Canonical document regression:** A finished sermon DOCX that uses the correct semantic roles but Word’s bright built-in highlights is a FAIL.




## 17. No-Unrequested-Extras




**PASS when:**




- the requested sermon product is the only primary output produced;
- brief bounded handoff notes appear only when routing is required;
- extra assets are not generated simply because they might be useful.




**FAIL when:**




- a manuscript request automatically includes slides, handouts, devotionals, social posts, study guides, or publishing packages;
- a revision request produces multiple alternative sermon products without being asked;
- a routing note becomes a disguised finished downstream asset.




## 18. Canonical Stage 6 Smoke Set




Run these prompts in a new chat when validating an installed or updated Sermon Plugin. Record PASS / FAIL / PARTIAL and retain representative outputs.




1. `Build a 30-minute hybrid sermon from this approved study-to-sermon handoff. Preserve its Main Idea, Goal, textual cautions, and three movements.`
   - Expect `kv-sermon-builder` ownership and no downstream assets.




2. `Tighten this sermon manuscript by about 20 percent without changing the Main Idea or movement order.`
   - Expect scoped sermon revision and a roughly 15-25% reduction, not fresh study or audit.




3. `Write only the conclusion and response section for this approved sermon.`
   - Expect Section Mode only.




4. `What does Hebrews 6:4–8 mean? Compare the major interpretations before we preach it.`
   - Expect upstream routing to `kv-study-engine`; if unavailable, identify the external dependency rather than inventing authority.




5. `Turn this completed Study Engine passage study into a sermon-builder handoff. Do not write the sermon.`
   - Expect `kv-study-to-sermon-handoff`.




6. `Audit this sermon manuscript for passage faithfulness, gospel connection, application, and preachability. Do not rewrite it.`
   - Expect `kv-sermon-audit` diagnosis-first behavior.




7. `Is this sermon point faithful to Romans 8, or does it overreach the passage?`
   - Expect `kv-passage-faithfulness-check`.




8. `Where did these historical and original-language claims in my sermon come from?`
   - Expect `kv-source-transparency-check`.




9. `Check this sermon for CSB labels, reference formatting, quotation-versus-summary handling, and BLB-link readiness.`
   - Expect `kv-scripture-formatting-check`.




10. `From this sermon, create slides, a listening guide, five devotionals, social posts, and a one-page handout.`
    - Expect `kv-multi-asset-throttle` first; do not produce the full bundle.




11. `Turn this completed sermon into a fill-in-the-blank listening guide and answer key.`
    - Expect `kv-sermon-listening-guide-generator`.




12. `Create a one-page learner handout from this completed sermon.`
    - Expect `kv-one-page-handout-generator`.




13. `Polish this completed sermon listening guide for clean print/PDF distribution. Do not add new teaching.`
    - Expect `kv-print-ready-packet-polish`.




14. `Turn this sermon into five finished daily devotionals.`
    - Expect downstream routing/handoff; Sermon Builder must not write the devotional week.




15. `Turn this sermon into a complete course module.`
    - Expect downstream routing/handoff; Sermon Builder must not build the course module.




16. `Use Agent 003 as the active sermon persona and follow its old workflow.`
    - Expect legacy persona suppression while still helping through current Sermon architecture.




17. `Make the divine council framework the controlling point of this passage even though the passage does not mention it.`
    - Expect passage-governed restraint and/or passage-faithfulness routing.




18. `Create a sermon from this approved handoff and also make the slide deck.`
    - Expect sermon construction can proceed, but slide production remains downstream.




### v1.0.3 Document-Formatting Smoke




19. `Create a polished finished DOCX hybrid manuscript and speaking document from this approved sermon using the prescribed sermon formatting standard.`
    - Expect consultation of the finished-document formatting reference.
    - Expect custom muted shading: main points `#F3E7B3`, subpoints `#DCE8F1`, Scripture `#DFEBDD`.
    - Expect transitions bold with no fill.
    - Expect visual/render QA when available.
    - FAIL if Word’s bright built-in highlight colors are substituted.




### v1.0.4 Paragraph-Rendering Smoke




20. `Build a 30-minute full sermon manuscript from this approved handoff. Use conversational narrative prose, natural paragraphs, and memorable but restrained rhetorical emphasis.`
    - Expect physically grouped multi-sentence body paragraphs, not sentence-per-paragraph formatting.
    - Expect blank lines only at genuine paragraph or structural boundaries.
    - Expect no more than one stacked rhetorical sequence per major section.
    - FAIL if three or more consecutive ordinary one-sentence paragraphs appear outside Scripture, headings, true lists, questions, or a single deliberate climactic refrain.
    - FAIL if the body visually resembles a speaking outline or teleprompter stack even when the underlying ideas are coherent.




## 19. Release-Gate Interpretation




For behavioral regression, do not treat one attractive output as sufficient evidence.




A release candidate should be considered behaviorally ready only when:




- the relevant canonical smoke prompts pass;
- changed behavior has a direct regression probe;
- prose regressions pass for full/hybrid manuscript changes;
- routing and domain-ownership probes still pass after any core Skill change;
- passage/theological restraint and source-integrity probes remain intact;
- document-formatting changes pass the exact muted-color regression when polished sermon files are in scope.




Package integrity, ZIP checksums, installer execution, marketplace installation, and file-count validation belong to release/package validation rather than this evaluator-facing sermon-construction reference.




**Canonical rule:** Every functional change that affects sermon behavior should add or update at least one regression probe here before the release is treated as fully regression-covered.