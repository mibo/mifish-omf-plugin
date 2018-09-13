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

## Abbr
See [Abbr](https://fishshell.com/docs/current/commands.html#abbr) in Fishshell documentation.

```fish
abbr --add gcf "git commit --amend --reuse-message HEAD"
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
