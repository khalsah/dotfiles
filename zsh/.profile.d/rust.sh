export PATH="$HOME/.cargo/bin:$PATH"

if command -v sccache &> /dev/null; then
  export RUSTC_WRAPPER=sccache
fi
