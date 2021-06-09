---
title: "Local theme development when using Hugo Modules"
date: 2021-05-27T00:00:00-04:00
lastmod: 2021-05-31T11:36:56-04:00
tags: ["hugo"]
categories: ["Tech"]
draft: false
weight: 0
---

Recent versions of [Hugo](https://gohugo.io) prefer the use of [Go Modules](https://blog.golang.org/using-go-modules) for managing themes. This is new and a little weird to me, but I'm slowly beginning to understand it. I'm documenting the process here so I don't forget.

<!--more-->

I've forked an original theme ([Even](https://github.com/olOwOlo/hugo-theme-even)) for use here. To tell Hugo where the theme is, I added the following to my site's config.toml...

```toml
[module]
[[module.imports]]
    path = "github.com/jackbaty/hugo-theme-even"
    disabled = false
```

With this in place, running `hugo mod get` will do its magic and use the code in the referenced Github repo as the site's theme. By default, modules seem to mount in "themes/", so this just works. It feels a little magic because nothing actually lives in "themes/". This took some getting used to.

But with the site using code from a (remote) repo, how do I work on the theme locally? I don't want to have to make a change in a local repo, then commit-push-get to test every little change. After some digging, I learned that Hugo has a ["replacements" feature in modules](https://gohugo.io/hugo-modules/configuration/#module-config-top-level).

Replacements allow Hugo to temporarily use other mounts/modules. I only want to use my local copy of the theme while doing development, so I added the replacement as an environment variable in .zshrc like so:

```sh
export HUGO_MODULE_REPLACEMENTS="github.com/jackbaty/hugo-theme-even -> /Users/jbaty/dev/hugo-theme-even"
```

Now, when running hugo serve locally, it picks up my local repo automatically, but server builds will use the "real" repo from Github. Clever.

And so far, all of this "Just Works" when deploying to Netlify.

UPDATE: I've learned that in order for Hugo/Netlify to pick up changes to the remote theme repo, there must be a "release" created in Github. Also, I've changed the build command from just \`hugo\` to \`hugo mod get && hugo\` otherwise it doesn't always seem to pick up the new theme release.

[//]: # "Exported with love from a post written in Org mode"
[//]: # "- https://github.com/kaushalmodi/ox-hugo"
