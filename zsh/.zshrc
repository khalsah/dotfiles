#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source base16 theme
BASE16_SHELL="$HOME/.config/base16-shell/base16-solarized.light.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
