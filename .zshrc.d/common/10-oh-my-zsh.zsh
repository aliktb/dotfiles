# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  aliases
  colored-man-pages
  command-not-found
  git
  docker
  docker-compose
  fzf
  gradle
  kubectl
  mvn
  safe-paste
  sdk
  tig
  tmux
  vscode
  yarn
  zsh-interactive-cd
  zsh-fzf-history-search
)


# User configuration
source $ZSH/oh-my-zsh.sh
