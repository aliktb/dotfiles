# Autocompletions
local -a completion_cmds=(
  clusterawsadm
  eksctl
  flux
  flux-operator
  nerdctl
  talosctl
  telepresence
  vcluster
)

for cmd in $completion_cmds; do
  command -v $cmd >/dev/null && . <($cmd completion zsh)
done

# Special cases
command -v pack >/dev/null && . $(pack completion --shell zsh)

# AWS CLI (uses different completion mechanism)
command -v aws >/dev/null && complete -C aws_completer aws

# OpenTofu (uses bash-style completion)
if command -v tofu >/dev/null; then
  autoload -U +X bashcompinit && bashcompinit
  complete -o nospace -C $(command -v tofu) tofu
fi

# Open buffer line in editor
autoload -z edit-command-line
zle -N edit-command-line
bindkey "^X^E" edit-command-line
