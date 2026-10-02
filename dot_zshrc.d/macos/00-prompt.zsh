# Set homebrew path
eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH="$(brew --prefix)/bin/:$PATH"

# Enable zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Enable zsh-syntax-highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# fnm
FNM_PATH="$HOME/Library/Application Support/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
fi
