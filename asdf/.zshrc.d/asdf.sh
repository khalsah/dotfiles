if [ -f "$ASDF_DIR/etc/bash_completion.d/asdf.bash" ]; then
  source "$ASDF_DIR/etc/bash_completion.d/asdf.bash"
elif [ -f "$ASDF_DIR/completions/asdf.bash" ]; then
  source "$ASDF_DIR/completions/asdf.bash"
fi
