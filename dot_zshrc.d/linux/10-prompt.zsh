# Enable zsh-autosuggestions
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Enable zsh-syntax-highlighting
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# fnm
FNM_PATH="/home/ali/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/home/ali/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi
