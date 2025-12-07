# 0x68k.github.io
This is the source for my personal blog **0x68k.com**. It uses some unsoported plugins so it must be built localy and published to GitHub, this is done via the script `scripts/publish.sh`

## Installation

```
  $ bundle install
```

## Create a new post
```
  $ rake new
```

And then edit the page created in posts directory.

## Create a new draft
```
  $ rake draft
```

## To setup a new local branch

```
  $ git clone git@github.com:cube-se/cube-se.github.io.git
  $ git switch -c gh-pages origin/gh-pages

```

## Run the server
```
  $ make run

```
## License

The following directories and their contents are Copyright Niklas Nilsson.
You may not reuse anything therein without my permission:

* \_posts/
* img/
