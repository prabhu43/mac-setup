brew cask install iterm2

echo ">> Restoring iterm2 preferences"
cp com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist

echo ">> iterm2 shell integration zsh"

curl -L https://iterm2.com/shell_integration/zsh -o ~/.iterm2_shell_integration.zsh

if grep -q "iterm2_shell_integration.zsh" "$HOME/.zshrc"; then
    echo "iterm2_shell_integration.zsh already configured"
else
    echo "source ~/.iterm2_shell_integration.zsh" >>  ~/.zshrc   
fi
