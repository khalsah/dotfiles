BASE16_SHELL="$HOME/.config/base16-shell"

[ -n "$SSH_CLIENT" ] && TMUX= sh "$BASE16_SHELL/scripts/base16-tomorrow-night.sh"
