brew install zsh zsh-git-prompt

sudo sh -c "echo $(which zsh) >> /etc/shells" && chsh -s $(which zsh)

sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo ">> iterm2 shell integration zsh"

curl -L https://iterm2.com/shell_integration/zsh -o ~/.iterm2_shell_integration.zsh

if grep -q "iterm2_shell_integration.zsh" "$HOME/.zshrc"; then
    echo "iterm2_shell_integration.zsh already configured"
else
    echo "source ~/.iterm2_shell_integration.zsh" >>  ~/.zshrc   
fi

sudo cp ./.zsh* ~/

chown $USER $HISTFILE

source ~/.zshrc