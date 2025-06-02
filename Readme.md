# Install

```bash
sudo apt-get install build-essential libffi-dev libssl-dev zlib1g-dev libreadline-dev git curl htop zsh tmux duf
# sudo dnf install @development-tools libffi-devel openssl-devel zlib-devel readline-devel git curl htop zsh tmux duf eza

## Install eza
sudo mkdir -p /etc/apt/keyrings
wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
sudo apt update
sudo apt install -y eza

git clone https://github.com/IsmailM/dotfiles .dotfiles

## Install Zprezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

## Install starship
curl -sS https://starship.rs/install.sh | sh

## Install mise
curl https://mise.run | sh
mise install ruby@latest python@latest nodejs@latest bun@latest
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

## Install Languages

```bash
mise install
```

## HomeBrew / LinuxBrew

```
## Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# brew install exa duf htop tmux gpg2 
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



