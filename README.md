# useful-tools

A list of useful tools

## Kubernetes

[kubectl](https://kubernetes.io/docs/reference/kubectl/) - Very useful for interacting with Kubernetes

[K9s](https://k9scli.io/) - Monitor logs and view running pods within k8s

## CLI

[Oh My ZSH](https://ohmyz.sh/) - Really useful extension to zsh shell with handy aliasing, support for plugins and themes

[starship](https://starship.rs/) - minimal yet powerful shell prompt

[bat](https://github.com/sharkdp/bat) - UNIX `cat` command but better

[diff-so-fancy](https://github.com/so-fancy/diff-so-fancy) - make `git diff` easier to read

[zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) - see what you've typed before

[zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) - easy to see if a command is valid, what's wrapped in quotation marks etc.

[The logfile Navigator](https://lnav.org/) (lnav) - more features when reading log files

[neofetch](https://github.com/dylanaraps/neofetch) - displays system info

[neovim](https://github.com/neovim/neovim) - fork of vim editor but better

[astrovim](https://github.com/AstroNvim/AstroNvim) - neovim config to create an IDE-like experience

[exa](https://github.com/ogham/exa) - makes `ls` command look nicer

- Add to `.zshrc`:
```
# Changing "ls" to "exa"
alias ls='exa --icons --color=always --group-directories-first'
alias ll='exa -alF --icons --color=always --group-directories-first'
alias la='exa -a --icons --color=always --group-directories-first'
alias l='exa -a --icons --color=always --group-directories-first'
alias l.='exa -a | egrep "^\."'
```

[Node Version Manager (nvm)](https://github.com/nvm-sh/nvm) - Manages multiple versions of nodeJS with ease

[sdkman](https://sdkman.io/) - SDK manager, useful for managing multiple jdk versions, gradle etc
## MacOS apps

[Clipy](https://github.com/Clipy/Clipy) - clipboard manager

[iTerm2](https://iterm2.com/) - terminal emulator with ability for hotkeys, useful commands, spupport for plugins and more

-   [iterm2-snazzy](https://github.com/sindresorhus/iterm2-snazzy) - Color scheme for iterm2

## Cross-platform apps

[DBeaver](https://dbeaver.io/) - Database tool for use with most common SQL databases

[Postman](https://www.postman.com/downloads/) - App for testing API endpoints with support for multiple auth standards such as oauth, AWS signatures, API keys etc

## UNIX tools

[Homebrew](https://brew.sh/) - package manager commonly used with macOS but also available to run on Linux machines
