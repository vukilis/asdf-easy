#!/bin/bash

# install asdf
sudo zypper in -t pattern devel_basis devel_C_C++
sudo zypper --non-interactive install curl git zlib-devel bzip2 libbz2-devel libffi-devel libopenssl-devel readline-devel sqlite3 sqlite3-devel xz xz-devel tk-devel 
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0

# configure asdf 
echo '' >> ~/.zshrc
echo '# asdf #' >> ~/.zshrc
echo '. $HOME/.asdf/asdf.sh' >> ~/.zshrc
echo 'fpath=(${ASDF_DIR}/completions $fpath)' >> ~/.zshrc
echo 'autoload -Uz compinit && compinit' >> ~/.zshrc
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
source ~/.zshrc

# add plugins 
asdf plugin add python; asdf plugin add nodejs; asdf plugin add terraform;
asdf install python latest

# install poetry
pipx install poetry

# configure poetry
# echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
poetry config virtualenvs.in-project true