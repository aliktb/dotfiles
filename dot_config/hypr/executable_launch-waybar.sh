#!/usr/bin/env sh

set -eu

runtime_dir="${XDG_RUNTIME_DIR:-/run/user/$(id -u)}"
hypr_dir="$runtime_dir/hypr"
signature="${HYPRLAND_INSTANCE_SIGNATURE:-}"

if [ -z "$signature" ] || [ ! -S "$hypr_dir/$signature/.socket.sock" ]; then
  signature=""
  for dir in $(ls -1dt "$hypr_dir"/* 2>/dev/null); do
    if [ -S "$dir/.socket.sock" ]; then
      signature="$(basename "$dir")"
      break
    fi
  done
fi

[ -n "$signature" ] || exit 1

export HYPRLAND_INSTANCE_SIGNATURE="$signature"
pkill waybar 2>/dev/null || true
exec waybar
