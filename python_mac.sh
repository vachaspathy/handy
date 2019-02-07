#Install pyenv
brew upgrade
brew install pyenv
brew install pyenv-virtualenv
echo "if which pyenv > /dev/null; then eval \"\$(pyenv init - )\"; eval \"\$(pyenv virtualenv-init - )\"; fi" >> ~/.profile

# install pip
# brew install pip
# pip install --upgrade pip

# Install python
pyenv install 3.6.6
pyenv global 3.6.6

# install packages
pip install numpy pandas scikit-learn ipython notebook

# Start ipython server
nohup ipython notebook --no-browser --port 8888 --notebook-dir ./notebooks > notebook.log & 
