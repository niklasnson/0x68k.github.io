---
layout: post
title: I was this old when i found tmux
categories: open-source project
tags: linux ubuntu
---

Tmux is a terminal multiplexer: it enables a number of terminals to be created, accessed. and conmntrolled from a single screen. **tmux** may be detached froma screen and continue running in the background, then lates reattached.

* Fully customizable status bar
* Multiple window management
* Splitting window in several panes
* Automatic layouts
* Panel synchronization
* Scriptability, which allows me to create custom tmux sessions for different purposes

    <img class="img-fluid" src="/assets/img/2025-09-04-i-was-this-old-when-i-found-tmux.png">

#### Install tmux

Tmux is avelibal in most distributions. I use Ubuntu so i install will `apt`

{% highlight bash %}
  $ sudo apt install tmux
{% endhighlight %}

#### Get started
To start using tmux, type tmux on your terminal. This command launches a tmux server, creates a default session (number 0) with a single window, and attaches to it.

{% highlight bash %}
  $ tmux
{% endhighlight %}


#### Tmux keybindings

* Ctrl+B D — Detach from the current session.
* Ctrl+B % — Split the window into two panes horizontally.
* Ctrl+B " — Split the window into two panes vertically.
* Ctrl+B Arrow Key (Left, Right, Up, Down) — Move between panes.
* Ctrl+B X — Close pane.
* Ctrl+B C — Create a new window.
* Ctrl+B N or P — Move to the next or previous window.
* Ctrl+B 0 (1,2...) — Move to a specific window by number.
* Ctrl+B : — Enter the command line to type commands. Tab completion is available.
* Ctrl+B ? — View all keybindings. Press Q to exit.
* Ctrl+B W — Open a panel to navigate across windows in multiple sessions.

