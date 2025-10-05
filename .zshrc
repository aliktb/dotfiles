# run only for interactive shells
[[ $- != *i* ]] && return

ZSH_CONFIG_DIR="${HOME}/.zshrc.d"
COMMON_DIR="$ZSH_CONFIG_DIR/common"
MAC_DIR="$ZSH_CONFIG_DIR/macos"
LINUX_DIR="$ZSH_CONFIG_DIR/linux"

# helper to source all readable .zsh files in a dir in lexical order
source_dir() {
  local dir="$1"
  [ -d "$dir" ] || return
  for f in "$dir"/*.zsh; do
    [ -r "$f" ] || continue
    source "$f"
  done
}

# platform-specific first
case "$(uname -s)" in
  Darwin) source_dir "$MAC_DIR" ;;
  Linux)  source_dir "$LINUX_DIR" ;;

esac

# common next
source_dir "$COMMON_DIR"

