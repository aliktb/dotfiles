# Set homebrew path
eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH="$(brew --prefix)/bin/:$PATH"

# fnm
FNM_PATH="$HOME/Library/Application Support/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
fi
