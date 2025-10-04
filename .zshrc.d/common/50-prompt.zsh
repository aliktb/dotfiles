# Starship prompt
eval "$(starship init zsh)"

# Enable direnv
eval "$(direnv hook zsh)"

# Enable fnm with cd
eval "$(fnm env --use-on-cd --shell zsh)"

# Enable pyenv
eval "$(pyenv init - zsh)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
