#!/bin/bash

# install asdf
sudo apt install -y make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev \
libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python3-openssl \
git

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2

# configure asdf 
echo '# asdf #'
echo '. $HOME/.asdf/asdf.sh' >> ~/.zshrc
echo 'fpath=(${ASDF_DIR}/completions $fpath)' >> ~/.zshrc
echo 'autoload -Uz compinit && compinit' >> ~/.zshrc
#source ~/.zshrc
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

# add plugins 
asdf plugin add python; asdf plugin add nodejs; asdf plugin add terraform; asdf plugin add docker-slim; asdf plugin add docker-compose-v1 
asdf install python 3.10.8
asdf global python 3.10.8

# install poetry
curl -sSL https://install.python-poetry.org | python3 -

# configure poetry
echo '$HOME/.local/bin' >> ~/.zshrc
echo 'export PATH="/home/linuxmint/.local/bin:$PATH"' >> ~/.zshrc
#source ~/.zshrc
poetry config virtualenvs.in-project true