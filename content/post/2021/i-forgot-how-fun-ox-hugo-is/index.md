---
title: "I forget how fun ox-hugo is"
date: 2021-05-25T00:00:00-04:00
lastmod: 2021-05-28T05:44:47-04:00
tags: ["hugo", "orgmode"]
categories: ["Meta"]
draft: false
weight: 2003
---

[ox-hugo](https://ox-hugo.scripter.co) is "an Org exporter backend that exports Org to Hugo-compatible Markdown (Blackfriday) and also generates the front-matter (in TOML or YAML format)."

It's more fun than it sounds.

<!--more-->

I've used ox-hugo before, but I end up either drifting away from Org mode and/or Hugo and forget what a powerful combination ox-hugo, Org mode, and Hugo can be.

The great thing is that I have all my posts in a single Org file, each as its own heading. Each heading is rendered as individual Markdown files with Hugo-compatible frontmatter.

A few highlights:

-   I use an org timestamp for the entry date and add posts.org to my agenda files so I see what I posted on a given day in my org agenda.
-   I have a yasnippet that helps me fill in the post metadata
-   Posts are rendered automatically when saving via local variable: `# eval: (org-hugo-auto-export-mode)`

The posts.org frontmatter looks like this...

```text
#+hugo_base_dir: ../
#+hugo_section: ./

#+hugo_weight: auto
#+hugo_auto_set_lastmod: t
#+hugo_front_matter_format: yaml
#+hugo_front_matter_key_replace: description>summary author>nil
#+category: blog
```

And then an individual post heading looks like this...

```text
DONE I forget how fun ox-hugo is :@Meta:hugo:orgmode:
:PROPERTIES:
:EXPORT_FILE_NAME: i-forget-how-fun-ox-hugo-is
:EXPORT_DATE: <2021-05-25 Tue>
:ID:       3942bdfb-50c1-41d1-be0b-eec21b615047
:END:
```

Here's the (ya)snippet:

```org
# -*- mode: snippet -*-
# name: Hugo
# key: hugo
# uuid: hugo
# --
TODO ${1:title}
:PROPERTIES:
:EXPORT_FILE_NAME: ${1:$(replace-regexp-in-string " " "-" (downcase yas-text))}
:EXPORT_DATE:
:END:

$0
```

And here's what the org document looks like in Emacs.

{{< figure src="posts.png" >}}

There's a whole blog in there!

[//]: # "Exported with love from a post written in Org mode"
[//]: # "- https://github.com/kaushalmodi/ox-hugo"
