---
layout: post
title: Overwrite local changes in Git
categories: [git, snippets]
tags: git
---

If tyou need to discard all local changes and just reset overwrite everything with a copy from the rmeote branch this is the way to do it. For me it was needed with the gh-pages branch of this project, depinding on what machine i last worked on the head would differ from computer to computer so i just need to update the head avoiding having to do a merge and fix a lot of meaningless conflicts. 


{% highlight bash %}
  $ git fetch --all
  $ get reset --hard origin/branch
  $ git merge '@{u}'
{% endhighlight %}

