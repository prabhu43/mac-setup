which -s brew
if [[ $? != 0 ]] ; then
    echo ">> Installing homebrew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo ">> Updating homebrew"
    brew update
fi

echo ">> Installing brew and cask apps"
brew bundle --file=./Brewfile