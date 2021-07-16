---
title: "Creating a digital index for my paper notebooks"
date: 2021-06-02T10:50:00-04:00
lastmod: 2021-07-16T10:05:49-04:00
draft: false
weight: 0
---

One of the few valid arguments against paper notebooks is that they are more difficult to search than digital notes. Fine, I'll concede that one. But I'm working on a patch for that.

<!--more-->

Rather than trying to digitize/OCR _everything_, I've decided that a simple index of topics should be sufficient. While rummaging around for ways to do this, I found [Soren Bjornstad's mindex](https://github.com/sobjornstad/mindex). Mindex is a small Python script that takes some input and generates a concise LaTeX-then-PDF index based on a simple text (.mindex) file.

Here's a section of the .mindex file for my current notebook:

```text
Books       32
Charlie     37-41
COVID-19    23,32,39
Creativity  43
Crypto      35
Devices     34
Fusionary   21, 26
Health      26,41
Investing   26
Journaling  21,37
```

It's a tab-delimited file with Topic->Pages->Sort Key. The third column, Sort Key, allows for tweaking of where each entry ends up in the final index. I've not needed to use that yet, though.

I wanted a few minor formatting changes so I forked Soren's repo to <https://github.com/jackbaty/mindex> and tweaked it a little. Here's the current output:

{{< figure src="/img/2021/notebook-index.png" caption="Figure 1: Index sample" >}}

I think it looks nice. LaTeX is awesome. I'm planning to update the index once a month or so. I just did it for May and it only took about 10 minutes. That's not too high a price to pay for the ability to find things more quickly. Once a notebook is complete I may print a copy and insert it right into that notebook.

I'm still thinking about how to best manage this, but it's a nice start.

[//]: # "Exported with love from a post written in Org mode"
[//]: # "- https://github.com/kaushalmodi/ox-hugo"
