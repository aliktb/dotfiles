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

# Google Cloud SDK
if command -v gcloud >/dev/null; then
  local gcloud_sdk_root="${$(command -v gcloud):A:h:h}"
  [ -r "$gcloud_sdk_root/completion.zsh.inc" ] && . "$gcloud_sdk_root/completion.zsh.inc"
fi

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
