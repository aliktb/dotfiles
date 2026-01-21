# Set Flux autocompletion
command -v flux >/dev/null && . <(flux completion zsh)

command -v flux-operator >/dev/null && . <(flux-operator completion zsh)

# Set clusterawsadm autocompletion
command -v clusterawsadm >/dev/null && . <(clusterawsadm completion zsh)

# AWS CLI autocompletions
complete -C aws_completer aws

# Set clusterawsadm autocompletion
command -v eksctl >/dev/null && . <(eksctl completion zsh)


# COMPLETE=zsh prek > "${fpath[1]}/_prek"

command -v nerdctl >/dev/null && . <(nerdctl completion zsh)

command -v pack >/dev/null && . $(pack completion --shell zsh)

command -v telepresence >/dev/null && . <(telepresence completion zsh)

command -v vcluster >/dev/null && . <(vcluster completion zsh)

command -v talosctl >/dev/null && . <(talosctl completion zsh)

# Set OpenTofu autocompletion
if command -v tofu >/dev/null; then
  # Note: The tofu completion uses bash-style completion (via bashcompinit),
  # which is different from the native zsh completions used by your other tools
  # (which use <(command completion zsh)). This is fine - the bashcompinit call
  # enables bash completion compatibility in zsh, and calling it multiple times
  # is safe (it won't cause issues).
  autoload -U +X bashcompinit && bashcompinit
  complete -o nospace -C $(which tofu) tofu
fi

# Open buffer line in editor
autoload -z edit-command-line
zle -N edit-command-line
bindkey "^X^E" edit-command-line
