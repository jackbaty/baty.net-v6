---
title: Some updates to my wiki - backlinks mostly
date:  2021-03-24T10:41:15-04:00
tags: ["TiddlyWiki"]
categories: ["Meta"]
---

I've made a few changes to the way my wiki ([RudimentaryLathe.wiki](https://rudimentarylathe.wiki)) does things.

I've gone back to only showing "Daily Notes" on the home page (aka "Story river"). This makes it feel a little more blog-like, which evidently is what I'm going for. On each Daily Note, I show a list of other content I added that day. To do this, I create a new tiddler, tag it with `$:/tags/ViewTemplate` and put the following as the content:

```
<$list filter="[all[current]tag[Daily Note]]" variable=ignore>

!!! Also on <$view field="created" format="date" template="DDth MMM YYYY"/>:

<<list-links filter:"[sameday:created{!!created}!is[system]!tag[Daily Note]]" emptyMessage:"Nothing yet.">
</$list>>

```

This finds all tiddlers with the same created day as the current one, and lists them (only if at least one is found).

The other significant change is that I've replaced the backlinks footer with one that does a little more. It started with a view template from bimlas, which was announced here: https://groups.google.com/g/tiddlywiki/c/XLpt1Uz_qAY. This is a bit more experimental, but interesting. The ViewTemplate does some text searching and finds two sets of results. The first is a list of tiddlers that contain the title of the current tiddler. The second searches for tiddlers whose content matches the title of the current tiddler and sorts by number of occurrences.

This is almost the same thing as showing backlinks, but combines mentions and explicit link based on occurrences. It shows the top 10.


![The new footer on rudimentarylathe.wiki](/img/2021/2021-03-25_wiki-footer.png)

And this one looks like this:

```
\define compare-by-number-of-matches() [list[!!text]regexp<currentTiddlerAsWords>count[]]
\define compare-by-length() [length[]]

<$list filter="[all[current]!tag[Daily Note]]" variable=ignore>
<$vars limit="10">
<$set name=currentTiddlerAsWords filter="[<currentTiddler>search-replace[ ],[|]addsuffix[(?i)]]">
<div style="display: flex">
<div style="padding-right: 1em">

  <u>Similar titles</u>

  <$list filter="[!is[system]!is[draft]search:title<currentTiddler>sortsub:number<compare-by-length>limit<limit>] -[<currentTiddler>]"/>

</div>
<div>

  <u>Mentions this</u>

  <$list filter="[!is[system]!is[draft]search<currentTiddler>!sortsub:number<compare-by-number-of-matches>limit<limit>] -[<currentTiddler>]"/>

</div>
</div>
</$set>
</$vars>
</$list>
```

This seems nice. Have I mentioned that TiddlyWiki is just wonderful for customizing like this. It's nearly as introspective as Emacs. All of the above "code" is just content in tiddlers same as any other content in the document.
