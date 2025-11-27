# Set Flux autocompletion
command -v flux >/dev/null && . <(flux completion zsh)

# Set clusterawsadm autocompletion
command -v clusterawsadm >/dev/null && . <(clusterawsadm completion zsh)

# AWS CLI autocompletions
autoload -Uz compinit && compinit
complete -C aws_completer aws
