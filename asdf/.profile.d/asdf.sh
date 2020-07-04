autoload bashcompinit
bashcompinit

if [ -x "$(command -v brew)" ]; then
  ASDF_DIR=$(brew --prefix asdf 2> /dev/null)
elif [ -d "$HOME/.asdf" ]; then
  ASDF_DIR="$HOME/.asdf"
fi

[ -x "$ASDF_DIR" ] && source "$ASDF_DIR/asdf.sh"
