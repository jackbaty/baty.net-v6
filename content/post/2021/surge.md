---
title: "surge.sh"
date: 2021-06-30T07:41:00-04:00
lastmod: 2021-06-30T07:41:56-04:00
categories: ["Tech"]
draft: false
weight: 0
---

I tried [Surge.sh](https://surge.sh) and it's pretty slick.

> Static web publishing for Front-End Developers
>
> Simple, single-command web publishing. Publish HTML, CSS, and JS for free, without leaving the command line.

It's great that there's a generous free tier, but it comes with a couple limitations.

-   The free tier does not support redirects
-   The free tier does not automatically redirect http->https
-   Deployment is not based on diffs. The entire app is re-uploaded each time.

I tried it with baty.net and was able to create my account and deploy the site to a .surge.sh subdomain in just a few lines in the terminal. That was neat. I may try it for smaller or infrequently-deployed static sites.

[//]: # "Exported with love from a post written in Org mode"
[//]: # "- https://github.com/kaushalmodi/ox-hugo"
