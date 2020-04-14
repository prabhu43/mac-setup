brew install python pyenv

pip install --upgrade setuptools
pip install --upgrade pip

if grep -q "pyenv init" "$HOME/.zshrc"; then
    echo "pyenv already configured"
else
    echo 'eval "$(pyenv init -)"' >> ~/.zshrc
fi

# if pip is not there
# curl https://bootstrap.pypa.io/get-pip.py > get-pip.py
# sudo python get-pip.py

pip install virtualenv
pip install virtualenvwrapper