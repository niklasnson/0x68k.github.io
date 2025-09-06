---
layout: post
title: My Vim configuration and wow
categories: open-source project
tags: vim words
---

I recently changed clients and now have an assignment where I configure and troubleshoot several Linux systems. It is part of my daily work but I also do a lot of development in Python and C++, at my previous job the recommended editor was VSCodium and we had a lot of special plugins that made the work easier. That is why I chose to change my primary editor to VSCodium, I know it is not a compulsion but I have always found it easiest to work in one and the same editor both at work and in my free time.

But my new assignment makes it much easier to use Vim instead of any other editor. This is a small walkthrough of the configuration I use at home. Due to security class, I can't really use the same configuration at work.

#### NERDTree
<img class="img-fluid" src="/assets/img/2025-09-05-my-vim-configuration-and-wow_1.png">

The NERDTree is a file system explorer for the Vim editor.

#### CtrlP
<img class="img-fluid" src="/assets/img/2025-09-05-my-vim-configuration-and-wow_2.png">

CtrlP is a great fuzzy file finder for Vim. As a complement to NERDtree, I think it's perfect. When I'm comfortable in projects, it's easier and faster to open files by name than to click through to the files.

#### Fzf
<img class="img-fluid" src="/assets/img/2025-09-05-my-vim-configuration-and-wow_3.png">

fzf itself is not a Vim plugin, and the official repository only provides the basic wrapper function for Vim. It's up to the users to write their own Vim commands with it.

I mainly use the :Buffert function which is absolutely fantastic and makes it super easy to work with multiple files at the same time.

