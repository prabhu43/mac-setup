brew install rbenv ruby-build rbenv-default-gems rbenv-gemset

if grep -q "rbenv init" "$HOME/Projects/config/env.sh"; then
    echo "rbenv already configured"
else
    echo 'eval "$(rbenv init -)"' >> ~/Projects/config/env.sh
fi

rbenv install 2.6.5
rbenv global 2.6.5

# bundler
gem install bundle
echo 'bundler' >> "$(brew --prefix rbenv)/default-gems"
