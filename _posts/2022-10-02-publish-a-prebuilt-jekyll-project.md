---
layout: post
title: Publish a prebuilt jekyll project
categories: jekyll bash ruby
tags: jekyll git
---

Jekyll and GitHub is a powerful combination, with easy you can publish a blog and the HTML will be built when you push. But you may run into issues when you use plugins that are not whitelisted by GitHub e.g the great archive gem.

The solution then is to build the HTML version locally and then push it to GitHub and make GitHub serve that as the webpage.

Im using a new branch `gh-pages` for this, beeing on master i run `jekyll build ~/temp_buil` and then i replace the content in the gh-pages branch with this. Then i publlish the branch gh-pages.

On GitHub go to settings, pages and select "deploy from branch" and set it to use the gh-pages branch.

You could turn this into a bash script.
