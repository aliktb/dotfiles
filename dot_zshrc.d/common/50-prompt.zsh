# Starship prompt
eval "$(starship init zsh)"

# Enable direnv
eval "$(direnv hook zsh)"

# Enable fnm with cd
if command -v fnm >/dev/null 2>&1; then
  eval "$(fnm env --use-on-cd --shell zsh)"
fi

# Enable pyenv
eval "$(pyenv init - zsh)"

# Replace cd with zoxide
eval "$(zoxide init --cmd cd zsh)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
