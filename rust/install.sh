brew install rustup
rustup-init

if grep -q "cargo/bin" "$HOME/.zshrc"; then
    echo "Cargo already added to PATH"
else
    echo 'export PATH="/Users/prabhujayakumar/.cargo/bin:$PATH"' >> ~/.zshrc
fi