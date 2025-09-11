---
layout: post
title: Amiga Dos Inside and Out
categories: amiga
tags: cli amiga
latest_posts:
  enabled: true
  limit: 5# leave blank to include all the blog posts
---

Mostly written as a note to myself while I'm configurering my Amiga 600HD.


{% highlight bash lineos %}
* dir -  directory
* endcli -  closedown cli and go to workbench
* format DRIVE <disk> NAME <name> [NOICONS]  - format drive
* cd DIR - chanage directory
* makedir /A - make directory
* delete - remove directory
* list - list files and information
* rename FROM TO - rename file or folder
* diskcopy FROM TO - copy disc
* relabel DRIVE NAME - rename a disc
* info - display disc drive information
* install DRIVE - Converts Amiga format disc to bootable disks
* type FROM - Displays a ASCII file on screen
* join - Concatenate (joins) up to 15 files to one
* serach FROM - Search for a string
* sort FROM TO - Sort command sorts text files
* protect FILE FLAGS - Set single protection bit on files
* filenote FILE COMMENT - Set a comment on a file
* setdate - Set date on file
* diskdoctor DRIVE - Attemts to save disc with read/write errors
* newcli - Opens a new cli task
* endcli - CLose current cli task
* execute - Executes a script file

{%  endhighlight %}


I highly recomend you to read [Amiga Dos Inside & Out](http://tele-work.hu/AmigaDoc/AmigaDosInside&out.pdf). One of the best sources to understand Amiga CLI.
