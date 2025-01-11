# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH


# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export FZF_BASE=/usr/local/bin/fzf

case `uname` in
  Darwin)
    # Set homebrew path    
    eval "$(/opt/homebrew/bin/brew shellenv)"

    # Enable zsh-autosuggestions
    source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

    # Enable zsh-syntax-highlighting
    source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
  ;;
  Linux)
    # Enable zsh-autosuggestions
    source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
    
    # Enable zsh-syntax-highlighting
    source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
  ;;
  FreeBSD)
    # commands for FreeBSD go here
  ;;
esac

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

# bat color scheme
export BAT_THEME="ansi"

# alias awsume
alias awsume=". awsume"


# Changing "ls" to "exa"
alias ls='eza --icons --color=always --group-directories-first'
alias ll='eza -alF --icons --color=always --group-directories-first'
alias la='eza -a --icons --color=always --group-directories-first'
alias l='eza -a --icons --color=always --group-directories-first'
alias l.='eza -a | egrep "^\."'

# Use keyword "idea" to open intelliJ
alias idea='open -na "IntelliJ IDEA CE.app"'

# git alias to go to root of repo
alias gitroot='cd $(git rev-parse --show-toplevel)'


# unset the gm (git merge) alias for graphicsmaick
unalias gm

# Function to decode kubernetes secret
#
# E.g. kubectl get secret my-secret -o json | ksec
ksec() { jq '.data | map_values(@base64d)' }


# Starship prompt
eval "$(starship init zsh)"

# Add Go to path variable
export PATH=$PATH:$HOME/go/bin

# Enable kubectl krew plugin manager
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# Adding psql to path
export PATH="/usr/local/opt/libpq/bin:$PATH"



export GPG_TTY=$(tty)

eval "$(direnv hook zsh)"

eval "$(fnm env --use-on-cd --shell zsh)"


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
export PATH="$(brew --prefix)/bin/:$PATH"

# fnm
FNM_PATH="/Users/alikhattab/Library/Application Support/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/Users/alikhattab/Library/Application Support/fnm:$PATH"
  eval "`fnm env`"
fi
