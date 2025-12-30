# Set Flux autocompletion
command -v flux >/dev/null && . <(flux completion zsh)

command -v flux-operator >/dev/null && . <(flux-operator completion zsh)

# Set clusterawsadm autocompletion
command -v clusterawsadm >/dev/null && . <(clusterawsadm completion zsh)

# AWS CLI autocompletions
autoload -Uz compinit && compinit
complete -C aws_completer aws

# Set clusterawsadm autocompletion
command -v eksctl >/dev/null && . <(eksctl completion zsh)


# COMPLETE=zsh prek > "${fpath[1]}/_prek"

command -v nerdctl >/dev/null && . <(nerdctl completion zsh)

command -v pack >/dev/null && . $(pack completion --shell zsh)

command -v telepresence >/dev/null && . <(telepresence completion zsh)

command -v vcluster >/dev/null && . <(vcluster completion zsh)
