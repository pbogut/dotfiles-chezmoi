#!/usr/bin/env bash
#=================================================
# name:   run_once_before_install-packages
# author: pbogut <pbogut@pbogut.me>
# date:   06/03/2024
#=================================================
sudo pacman -Sy

# if no paru installed then build it with cargo
if ! paru --version; then
  echo "> Installing paru dependencies ..."
  sudo pacman -S rustup gcc cmake pkgconf fakeroot
  echo "> Installing paru ..."
  rustup toolchain install stable
  cargo install paru
  "$HOME/.cargo/bin/paru" -S paru && cargo uninstall paru
fi

echo "> Installing packages..."
paru -S \
  age \
  apg \
  atool \
  base-devel \
  bluez-hcitool \
  chafa \
  cmake \
  copyq \
  dbus-broker \
  dunst \
  enca \
  fakeroot \
  gcc \
  glow \
  gnome-keyring \
  go \
  grim \
  gtk3-print-backends \
  i3wm i3lock \
  imagemagick \
  inetutils \
  inotify-tools \
  jq \
  kmonad-bin \
  libpipewire \
  libwireplumber \
  lldb \
  maim slop \
  mpv mpv-mpris \
  neomutt \
  neovim-git \
  network-manager-applet \
  nm-applet \
  nodejs npm \
  notmuch-runtime notmuch \
  noto-fonts-emoji \
  numlockx \
  pandoc \
  paru \
  pipewire \
  pkgconf \
  playerctl \
  polybar \
  pulsemixer \
  python python-pip \
  python-black \
  python-isort \
  qutebrowser \
  ranger \
  redshift \
  rescuetime \
  ripgrep \
  rofi \
  ruby \
  rustup \
  shfmt \
  slurp \
  starship \
  sway \
  swayidle \
  texlive-most \
  tmux \
  udevil \
  udisksvm \
  unclutter \
  w3m \
  waybar \
  wget \
  which \
  wireplumber \
  wl-clipboard \
  wmctrl \
  wob \
  wofi \
  wtype \
  xcwd-git \
  xdg-desktop-portal \
  xdg-desktop-portal-gtk \
  xdg-desktop-portal-kde \
  xdg-desktop-portal-wlr \
  xdotool \
  xob \
  xrandr \
  xtitle \
  yarn \
  yt-dlp-git \
  zenity

if [[ $(hostname) == 'silverspoon' ]]; then
  paru -S \
    intel-media-driver
fi

sudo systemctl enable --now dbus-broker.service
sudo systemctl --global disable gnome-keyring-daemon.socket

systemctl --user enable gnome-keyring-daemon.service


pip install --user \
  guessit \
  i3-py \
  i3ipc \
  neovim-remote \
  pynvim \
  steamctl \
  trakt.py \
  upnpclient \
  vim-vint \
  visidata \
  --upgrade

gem install \
  clipboard \
  mail \
  nokogiri \
  redcarpet \
  rotp

go install github.com/nsf/gocode@latest
go install github.com/pbogut/mails-go-web@latest

rustup target add wasm32-unknown-unknown
rustup toolchain install nightly
rustup toolchain install stable
rustup component add rust-analyzer --toolchain nightly
rustup component add rust-analyzer --toolchain stable
rustup component add rust-src --toolchain nightly
rustup component add rust-src --toolchain stable
rustup component add rustfmt --toolchain nightly
rustup component add rustfmt --toolchain stable

cargo install --git https://github.com/pbogut/enrichmail.git
cargo install --git https://github.com/pbogut/cargo-workspace.git

git clone https://github.com/pbogut/i-use-rust-btw.git ~/.i-use-rust-btw
cd ~/.i-use-rust-btw && cargo-workspace install
cd -

cargo install \
  mprocs \
  rtx-cli \
  bacon

yarn global add \
  @mozilla/readability \
  elm \
  html-beautify \
  jsdom \
  qutejs \
  readability-cli \
  -y

gitpac all

flatpak remote-add --if-not-exists --user flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install -y org.ferdium.Ferdium


# git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.3.0
# source ~/.asdf/asdf.sh
# source ~/.asdf/completions/asdf.bash
# asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
# asdf plugin-add php https://github.com/odarriba/asdf-php.git
# asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git

# Imports Node.js release team's OpenPGP keys to main keyring
# bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
