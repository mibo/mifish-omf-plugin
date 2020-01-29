<img src="https://cdn.rawgit.com/oh-my-fish/oh-my-fish/e4f1c2e0219a17e2c748b824004c8d0b38055c16/docs/logo.svg" align="left" width="144px" height="144px"/>

#### mifish-omf-plugin
> A plugin for [Oh My Fish][omf-link].

[![MIT License](https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square)](/LICENSE)
[![Fish Shell Version](https://img.shields.io/badge/fish-v2.2.0-007EC7.svg?style=flat-square)](https://fishshell.com)
[![Oh My Fish Framework](https://img.shields.io/badge/Oh%20My%20Fish-Framework-007EC7.svg?style=flat-square)](https://www.github.com/oh-my-fish/oh-my-fish)

<br/>


## Install

```fish
$ omf install mifish-omf-plugin
```


## Usage

```fish
$ mifish-omf-plugin
```

## Functions

### `bru`
Helper alias for [`brew`](https://brew.sh) which combines `brew update -> brew outdated -> brew upgrade` in a single `bru` command.

### `zg $*`
Run `z` with given parameters and list the result as selectable items.

### `pdf2booklet` (to be done)
Currently only a _Idea TBD_. Create a function which only takes on parameter (input PDF), create an _Booklet_ (with re-use name of the input file => _input-file.pdf_ -> _input-file-booklet.pdf_) and then directly opens _Preview_ app.

Booklet creation is done via _pdfbooklet_ (see [GitHub project](https://github.com/sptim/pdfbooklet)).

Run `pdf2booklet` with name of PDF to be converted.


## Abbrevation
See [Abbr](https://fishshell.com/docs/current/commands.html#abbr) in Fishshell documentation.

```fish
abbr --add gcf "git commit --amend --reuse-message HEAD"
abbr --add -U git_mb_rm_gone_branch_dry "git branch -v | grep gone | cut -f 3 -d ' '"
abbr --add -U git_mb_rm_gone_branch "git branch -D (git branch -v | grep gone | cut -f 3 -d ' ')"
```

## Helpful links
https://mvolkmann.github.io/fish-article/

# License

[MIT][mit] © [mibo][author] et [al][contributors]


[mit]:            https://opensource.org/licenses/MIT
[author]:         https://github.com/{{USER}}
[contributors]:   https://github.com/{{USER}}/plugin-mifish-omf-plugin/graphs/contributors
[omf-link]:       https://www.github.com/oh-my-fish/oh-my-fish

[license-badge]:  https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square
