---
title: "Running Doom and Nano emacs at the same time using Chemacs"
date: 2021-05-31T09:48:00-04:00
lastmod: 2021-06-01T18:37:30-04:00
tags: ["emacs"]
categories: ["Tech"]
draft: false
weight: 0
---

Most of the time I use a [Doom Emacs](https://github.com/hlissner/doom-emacs) configuration, but sometimes I feel like testing something new. I've been enamored by [Nano Emacs](https://github.com/rougier/nano-emacs) lately, but there's no way I'll switch to it permanently.

Today I learned about [Chemacs](https://github.com/plexus/chemacs2).

<!--more-->

> Chemacs 2 is an Emacs profile switcher, it makes it easy to run multiple Emacs configurations side by side.

So I configured Chemacs and added profiles for my default Doom config and also one for Nano. This is crazy, but I can now run both configurations _at the same time_!. Here's a screenshot. The left window is Org-journal in Nano and the right window is my org-mode configuration in Doom.

{{< figure src="two-emacs.png" >}}

Here's a helpful video showing how it all works: <https://www.youtube.com/watch?v=hHdM2wVM1PI>

[//]: # "Exported with love from a post written in Org mode"
[//]: # "- https://github.com/kaushalmodi/ox-hugo"
