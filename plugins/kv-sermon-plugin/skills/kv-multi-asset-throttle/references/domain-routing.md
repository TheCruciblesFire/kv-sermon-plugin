# Domain Routing Map

Use this map to classify requested assets and recommend the next workflow.

| Asset Type | Preferred Workflow |
|---|---|
| Passage study, interpretive brief, theological synthesis | KV Study Engine |
| Sermon manuscript, sermon outline, speaking outline, sermon audit | KV Sermon Builder |
| Devotional week or day, devotional reflection, devotional derivatives | KV Devotion Builder |
| Course build sheet, module map, lesson architecture, learning outcomes | KV Course Builder |
| Student packet, workbook, leader guide, listening guide, discussion sheet | KV Student Packet Builder |
| Interactive exercises, activity selection, embed-ready activities | KV Interactive Exercise Builder |
| Slide deck, visual presentation, PowerPoint | Slide / presentation workflow |
| Podcast script, social posts, media derivatives | Dedicated media/content workflow |
| NotebookLM prompt package or MCG handoff | Tool-specific handoff workflow |
| PDF, DOCX, final printable export | Document/export workflow |

## Controlling Layer Defaults

- If the prompt begins with a passage and requests many ministry products, begin with study or master handoff.
- If the prompt begins with a completed study and requests a sermon plus derivatives, begin with sermon.
- If the prompt begins with a completed sermon and requests course/packet/devotional assets, create a conversion handoff or choose the requested primary derivative.
- If the prompt begins with a course architecture and requests workbook/facilitator/LMS/interactions, begin with course architecture approval or primary course handoff.
- If the prompt begins with finalized devotional content and requests social/image/podcast/workbook outputs, the devotional is the source base; derivative outputs should be staged.
