# Starship prompt
eval "$(starship init zsh)"

# Enable direnv
eval "$(direnv hook zsh)"

# Enable pyenv
eval "$(pyenv init - zsh)"

# Replace cd with zoxide
eval "$(zoxide init --cmd cd zsh)"

# Activate mise
if command -v mise >/dev/null 2>&1; then
  eval "$(mise activate zsh)"
fi
