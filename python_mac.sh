#Install pyenv
brew upgrade
brew install pyenv
echo "if which pyenv > /dev/null; then eval "\$\(pyenv init -\)"; fi" >> ~/.profile

# install pip
brew install pip
pip install --upgrade pip

# Install python
pyenv install 2.7.10
pyenv global 2.7.10

# install packages
pip install numpy pandas scikit-learn ipython notebook
