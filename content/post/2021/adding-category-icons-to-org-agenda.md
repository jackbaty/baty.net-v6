---
title: "Adding category icons to Org Agenda"
date: 2021-08-22T13:16:00-04:00
lastmod: 2021-08-22T13:16:27-04:00
tags: ["orgmode"]
draft: false
weight: 0
---

I didn't know it was so easy to add icons based on an entry's category when viewing my Org agenda. Look at this!

{{< figure src="/ox-hugo/_20210822_1242442021-08-22-agenda.png" >}}

Here's my config so far. (Idea stolen from someone, but I don't remember from whom, sorry)

```elisp
(setq org-agenda-category-icon-alist
        `(("Personal" ,(list (all-the-icons-material "home" :height 1.0)) nil nil :ascent center)
          ("Repeat" ,(list (all-the-icons-material "repeat" :height 1.0)) nil nil :ascent center)
          ("Events" ,(list (all-the-icons-material "event" :height 1.0)) nil nil :ascent center)
          ("Anniv" ,(list (all-the-icons-material "perm_contact_calendar" :height 1.0)) nil nil :ascent center)
          ("Birthday" ,(list (all-the-icons-material "cake" :height 1.0)) nil nil :ascent center)
          ("Daybook" ,(list (all-the-icons-material "info_outline" :height 1.0)) nil nil :ascent center)
          ("Task" ,(list (all-the-icons-material "check_box_outline_blank" :height 1.0)) nil nil :ascent center)
          ("Unfiled" ,(list (all-the-icons-material "move_to_inbox" :height 1.0)) nil nil :ascent center)))
```

Emacs is cool.

[//]: # "Exported with love from a post written in Org mode"
[//]: # "- https://github.com/kaushalmodi/ox-hugo"
