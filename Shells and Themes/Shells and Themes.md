# Shell Overview

The most quality of life in shells comes from (heavily subjective):

- autocompletion
- plugin/theme support
- history
- globbing
- intuitive syntax

The shells mostly differ in these points.

- [ ] Decide on which shell you want to use
  - roughly sorted from "old and stable" to "new and feature rich"
  - bash
    - really old
    - installed everywhere
    - not many plugins and features
  - zsh
    - mostly bash compatible
    - not as ubiquitous as bash, but still common
    - very good plugin support
    - some more features
  - fish
    - modern features
    - very good defaults
    - less compatibility to common syntax (still good)
    - decent plugin support
  - nushell
    - most modern of all of these
    - syntax changes quite a bit
    - treat data streams as more than text
      - e.g. native support for tables
    - good defaults
    - decent plugin support

- [ ] Read a quickstart guide of your shell
  - *If you want to do theming, you can also do that first*
  - bash, zsh: probably not a lot of features you do not know here
    - maybe worth looking at:
      - globbing (especially zsh)
      - search history
  - zsh: this one is also not as interesting without plugins and themes
    - globbing (especially extended one) is nice here
  - fish:
    - [quick introduction](https://fishshell.com/docs/current/tutorial.html)
    - look for autocompletion and syntax highlighting
  - nushell:
    - [quick introduction](https://www.nushell.sh/book/getting_started.html)
    - look for autocompletion and piping (data structures)
    - demonstrative command: `ls | where size > 10kb | sort-by name`
- [ ] If you want to switch permanently: `chsh`

# Theming and Plugins

- For an overview over theming and plugin support per shell, look above
- [ ] Install whatever you like
  - Plugins depend heavily on your shell
  - Themes can be shell specific, but don't have to be
  - See below for places to look at
- Git repositories are a good place to see features of themes

## Starship (shell agnostic)

- [ ] [Install it](https://starship.rs/guide/)
- [ ] Go into a git repository to see an example of what it offers
- Alternatively there is also Oh My Posh

## Interesting Plugins (shell agnostic)

- [ ] [atuin](https://atuin.sh/)
  - better shell history
- [ ] [carapace](https://github.com/carapace-sh/carapace)
  - better completion for (almost) all commands

## bash

- [Starship](#starship)
- [oh-my-bash](https://github.com/ohmybash/oh-my-bash)
  - Plugins and themes

## zsh

- [Starship](#starship)
- [Oh-my-zsh](https://ohmyz.sh/)
  - Plugins and themes
- Powerlevel10k
  - Powerful theme with good defaults

## fish

- [Starship](#starship)
- [Native themes](https://github.com/oh-my-fish/oh-my-fish/blob/master/docs/Themes.md)
- [Plugins](https://github.com/jorgebucaran/awsm.fish)

## nushell

- [Starship](#starship)
- [nu_scripts](https://github.com/nushell/nu_scripts)
  - Plugins, themes, scripts

# Terminal Emulators

This one is probably not that interesting for most, but might offer nice features for some.
Good starting points are [kitty](https://sw.kovidgoyal.net/kitty/), [alacritty](https://alacritty.org/) and [ghostty](https://ghostty.org/).

There is mostly speed, tab behavior and keybindings to be gained here.
Some terminal emulators offer other nice features like:

- image support
- ligature support
- Miscellaneous features like
  - "put output of last command into a pager"
  - integration of features over ssh
