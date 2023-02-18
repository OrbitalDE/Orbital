#!/bin/bash

sudo apt-get install build-essential libglib2.0-dev cmake pkg-config libxcb-randr0-dev libxcb-xtest0-dev libxcb-xinerama0-dev libxcb-shape0-dev libxcb-xkb-dev libx11-dev libgtk-3-dev dmenu terminator tint2 picom yaru-theme-gtk vim
cargo build --release
sudo cp target/release/skyWM /usr/bin/skyWM
sudo cp extra/orbital.desktop /usr/share/xsessions
rm -rf ~/.config/orbitalde
mkdir ~/.config/orbitalde
mv extra/autostart.sh ~/.config/orbitalde
mv extra/wallpaper.jpg ~/.config/orbitalde
rm -rf ~/.config/tint2
mv extra/tint2 ~/.config
rm -rf ~/.config/gtk-3.0
mv extra/gtk-3.0 ~/.config