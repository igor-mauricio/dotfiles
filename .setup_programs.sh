#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "=== Installing CLI tools ==="

brew install \
  git \
  wget \
  yazi \
  zoxide \
  zellij \
  bat \
  fd \
  ffmpeg \
  lazydocker \
  lazygit \
  fzf \
  mockery \
  gemini-cli \
  neovim \
  neofetch \
  btop \
  go \
  python3 \
  nvm

echo "=== Installing GUI apps ==="

brew install --cask \
  zen \
  iterm2 \
  obs \
  karabiner-elements \
  transmission \
  betterdisplay \
  bitwarden \
  zerotier-one \
  visual-studio-code \
  aerospace \
  discord \
  chatgpt \
  gimp \
  mac-mouse-fix \
  orbstack

brew tap kde-mac/kde https://invent.kde.org/packaging/homebrew-kde.git
brew install --cask kde-mac/kde/kdeconnect

# install platformio
curl -fsSL -o get-platformio.py https://raw.githubusercontent.com/platformio/platformio-core-installer/master/get-platformio.py
python3 get-platformio.py
