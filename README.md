# 0x68k.github.io
This is the source for my personal blog **niklasnson.com**. It uses some unsoported plugins so it must be built localy and published to GitHub, this is done via the script `scripts/publish.sh`

## Installation

```
  $ bundle install
```

## Create a new post
```
  $ rake new
```

## Create a new draft
```
  $ rake draft
```

## To setup a new local branch

```
  $ git clone git@github.com:niklasnson/niklasnson.github.io.git
  $ git switch -c gh-pages origin/gh-pages

```

And then edit the page created in posts directory.

