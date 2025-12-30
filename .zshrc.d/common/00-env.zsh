# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH


# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set FZF_BASE
export FZF_BASE=/usr/local/bin/fzf

# Set color scheme for batcat (bat)
export BAT_THEME="Sublime Snazzy"

# Set nvim as `kubectl edit` editor
export KUBE_EDITOR="nvim"

# Add Go to path variable
export PATH=$PATH:$HOME/go/bin

# Enable kubectl krew plugin manager
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# Adding psql to path
export PATH="/usr/local/opt/libpq/bin:$PATH"

export GPG_TTY=$(tty)

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"

# Created by `pipx`
export PATH="$PATH:/home/ali/.local/bin"

# Set default editor for ZSH as Neovim
export EDITOR=nvim
