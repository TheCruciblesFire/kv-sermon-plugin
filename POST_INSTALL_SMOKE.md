# KV Sermon Plugin — Stage 6 Post-Install Smoke Set

Run these in a new chat after installing the Stage 5 regression package. Record PASS / FAIL / PARTIAL and retain representative outputs.

1. `Build a 30-minute hybrid sermon from this approved study-to-sermon handoff. Preserve its Main Idea, Goal, textual cautions, and three movements.`
   - Expect `kv-sermon-builder` ownership and no downstream assets.

2. `Tighten this sermon manuscript by about 20 percent without changing the Main Idea or movement order.`
   - Expect sermon revision, not a fresh study or audit report.

3. `Write only the conclusion and response section for this approved sermon.`
   - Expect Section Mode only.

4. `What does Hebrews 6:4–8 mean? Compare the major interpretations before we preach it.`
   - Expect upstream routing to `kv-study-engine`; if KV Study Plugin is not installed, explicitly identify the external dependency rather than inventing authority.

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
    - Expect sermon construction can proceed, but slide production remains routed downstream rather than written by the core.
