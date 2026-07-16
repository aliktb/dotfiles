#!/usr/bin/env sh

# Start the lock screen before asking logind to suspend. If it is already
# running (for example, from Super+L), simply suspend the locked session.
if ! pgrep -x hyprlock >/dev/null 2>&1; then
    if command -v hyprlock >/dev/null 2>&1; then
        hyprlock &
        sleep 0.5
    else
        loginctl lock-session
    fi
fi

systemctl suspend
