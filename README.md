# asdf-easy

**Custom script to setup asdf and poetry for python manage**

## Requirements
 - Linux (Ubuntu / Fedora)
 - python 3.6+
 - zsh shell

# How To Use
```
git clone https://github.com/vukilis/asdf-easy.git
cd asdf-easy
python3 main.py
```

## What Script Do?
### - main.py
- Ask what is your system based on
- Start installation bash script 

### - setup-[debian/fedora/openSUSE].sh
- auto install needed dependencies 
- Install and configure asdf and poetry
- Changes /proc/sys/fs/inotify/max_user_watches from default to 524288 (for nodejs)
- In addition to python plugin, also added nodejs, terraform, docker-slim and docker-compose-v1 
- Python 3.10.8 will be installed and set globally
- poetry virtualenvs.in-project set to **true**