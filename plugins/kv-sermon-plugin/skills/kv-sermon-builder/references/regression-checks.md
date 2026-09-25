# Regression Checks




Use these checks when validating changes to sermon construction behavior. These are evaluator-facing regression criteria, not live drafting instructions. Keep quantitative thresholds here rather than asking the Sermon Builder to calculate them during generation.




## Narrative-Prose Preference




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
- ordinary argument units are reconstructed into connected prose before any selected standalone emphasis lines are restored;
- the default editorial presumption is to merge related ordinary sentences, with isolation treated as an earned exception;
- hybrid outputs are not labeled or formatted as "hybrid manuscript / preaching outline" unless both products were explicitly requested;
- short standalone lines are occasional and clearly rhetorical;
- transitions read as spoken narrative rather than slide bullets;
- a thin speaking outline, when explicitly requested, may use short memory-jogging lines.




**FAIL when:**




- full or hybrid manuscript prose is dominated by one-sentence paragraphs;
- fewer than 70 percent of ordinary body paragraphs contain two or more complete sentences;
- adjacent ordinary one-sentence paragraphs repeatedly remain separate even though they belong to the same argument unit (for example, claim -> explanation -> qualification -> consequence -> application);
- three or more related one-sentence paragraphs appear consecutively outside approved exemptions;
- a major section contains multiple stacked declarative or imperative sequences, even if each sequence is individually rhetorical;
- ordinary exposition is rendered as stacked fragments;
- ordinary exposition remains choppy after paragraph merging because it contains chains of three or more short simple sentences carrying one thought;
- paragraphs repeatedly use the same subject-verb opening or clipped declarative syntax where natural sentence combination would preserve the thought more clearly;
- hybrid mode is treated as outline cadence with occasional prose rather than manuscript prose with selective cues;
- successive imperatives or `Not X. Not Y. Not Z.` patterns recur without a clear rhetorical reason;
- blank lines are routinely used to pace individual sentences rather than form paragraphs;
- short or emphatic sentences are isolated merely because they would receive a vocal pause, even though the underlying thought has not changed;
- paragraph breaks repeatedly separate claim, explanation, qualification, example, consequence, or application that belong to one argument unit;
- the output reads more like a slide deck, teleprompter stack, or speaking outline than a manuscript.




**Exemptions:** Scripture blocks, actual lists, brief response questions, intentional refrains, and speaking-outline mode.




## Narrative Boundary Probe


Use this probe to catch the failure mode in which ordinary spoken pauses are formatted as paragraph boundaries.


**FAIL example:**


> Growth is demanding.
>
> Hebrews speaks of training.
>
> Peter tells us to make every effort.
>
> Growth may require discipline, repentance, study, difficult conversations, service, and change.


This fails when the lines are functioning as one explanatory thought rather than as a deliberate refrain.


**PASS behavior:** Reconstruct the argument unit as connected prose first. Restore a standalone line only if it clearly functions as Scripture, a major diagnostic question, a deliberate refrain, a structural transition, a true list, or a genuine climactic landing point.


**Canonical check:** Paragraph boundaries follow thought boundaries, not speaking pauses. Default to merge; isolation must earn its place.


## Sentence-Level Choppiness Probe




Use this probe specifically to catch the failure mode in which paragraph formatting improves but the underlying syntax remains clipped.




**FAIL example:**




> He hears truth. He obeys truth. He practices truth. His discernment grows.




A model does not pass merely by moving those sentences into one paragraph.




**PASS behavior:** Rewrite the thought into connected spoken prose, for example by combining related clauses and varying syntax so the causal relationship is audible. The exact wording is not prescribed; the requirement is sustained, natural prose rather than a string of emphasis sentences.




**Canonical check:** In ordinary exposition, three or more consecutive short simple sentences carrying one argument unit are a revision trigger unless the sequence is clearly a deliberate rhetorical device.




## Downstream Boundary




The core Sermon Builder must classify artifact ownership before drafting. It must not directly create finished devotionals, course lessons/modules, slide decks, media/social assets, workbooks, leader guides, publishing assets, or disguised partial versions of those products. Route or prepare a bounded handoff instead.




**Canonical boundary probes:**




- Prompt: `Turn this completed sermon into five finished devotionals.`
  - PASS: does not write the devotionals; preserves the sermon burden in a concise downstream handoff/routing response.
  - FAIL: writes any finished devotional, devotional sample, devotional outline intended as the requested product, or partial devotional set.
- Prompt: `Turn this completed sermon into a complete course module.`
  - PASS: does not write the course module; preserves the sermon burden and teaching cautions in a concise downstream handoff/routing response.
  - FAIL: writes a lesson/module, module outline that functions as the requested course product, activities, assessments, or partial course content.
- Prompt: `Build the sermon and a slide deck.`
  - PASS: may build the sermon-owned artifact when requested, but routes/delegates the slide deck and does not generate slide content inside the core lane.
  - FAIL: generates the slide deck because the request contains fewer than three assets.




**Boundary rule:** explicit user intent does not override production ownership. The three-asset throttle and domain ownership are separate gates; requests for one or two downstream assets still route to the proper owner.