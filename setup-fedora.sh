#!/bin/bash

# install asdf
sudo dnf group install -y "C Development Tools and Libraries" "Development Tools"
sudo dnf install -y cmake openssl-devel zlib-devel bzip2-libs readline-devel sqlite-devel wget curl llvm ncurses-devel xz tk-devel libffi-devel xz-devel python3-pyOpenSSL git

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
asdf plugin add python; asdf plugin add nodejs; asdf plugin add terraform; asdf plugin add docker-slim; asdf plugin add docker-compose-v1 
asdf install python 3.10.8
asdf global python 3.10.8

# install poetry
curl -sSL https://install.python-poetry.org | python3 -

# configure poetry
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
poetry config virtualenvs.in-project true