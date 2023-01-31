# Install

```bash
git clone https://github.com/IsmailM/dotfiles .dotfiles

## Install Zprezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

## Install starship
curl -sS https://starship.rs/install.sh | sh

## Install asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2

## Install SpaceVim
curl -sLf https://spacevim.org/install.sh | bash

## Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install exa duf htop tmux gpg2 

asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf install nodejs latest
asdf install ruby latest

```

## Set dotfiles

```bash
ln -s .dotfiles/ctags .ctags;
ln -s .dotfiles/gemrc .gemrc;
ln -s .dotfiles/gitconfig .gitconfig;
ln -s .dotfiles/gitignore .gitignore;
ln -s .dotfiles/pryrc .pryrc;
ln -s .dotfiles/rdebugrc .rdebugrc;

ln -s .dotfiles/zsh/zlogin .zlogin
ln -s .dotfiles/zsh/zpreztorc .zpreztorc
ln -s .dotfiles/zsh/zprofile .zprofile
ln -s .dotfiles/zsh/zshenv .zshenv
ln -s .dotfiles/zsh/zshrc .zshrc

# Note: ensure the correct cran is set up - https://packagemanager.rstudio.com/client/#/repos/2/overview
ln -s .dotfiles/Rprofile .Rprofile
```


## Install Applications

* Iterm: https://iterm2.com/downloads.html
* PDF Expert: https://pdfexpert.com/
* Postgres: https://postgresapp.com/downloads.html
* Cisco AnyConnect: 
* Spotify: https://www.spotify.com/us/download/mac/
* VSCODE: https://code.visualstudio.com/download#
* Sublime Text: https://www.sublimetext.com/download
* Iterm: https://iterm2.com/downloads.html
* LG Hub: https://www.logitechg.com/en-gb/innovation/g-hub.html
* ALfred: https://www.alfredapp.com/
* Docker: https://www.docker.com/products/docker-desktop/
* Rectangle: https://rectangleapp.com/
* MS OFFICE

* Paste
* App Cleaner
* Fantastical
* Xnip
* slack
* Bitwarden
* WhatsApp



