#!/bin/bash

sudo apt-get install build-essential libglib2.0-dev cmake pkg-config libxcb-randr0-dev libxcb-xtest0-dev libxcb-xinerama0-dev libxcb-shape0-dev libxcb-xkb-dev libx11-dev libgtk-3-dev rofi terminator tint2 picom yaru-theme-gtk yaru-theme-icon vim python3-tk pavucontrol lxappearance feh -y
cargo build --release
sudo cp target/release/skyWM /usr/bin/skyWM
sudo chmod +x /usr/bin/skyWM
sudo cp extra/orbital.desktop /usr/share/xsessions
rm -rf ~/.config/orbitalde
mkdir ~/.config/orbitalde
mv extra/autostart.sh ~/.config/orbitalde
mv extra/wallpaper.png ~/.config/orbitalde
rm -rf ~/.config/tint2
mv extra/tint2 ~/.config
rm -rf ~/.config/gtk-3.0
mv extra/gtk-3.0 ~/.config
sudo cp extra/orbital-settings /usr/bin
sudo chmod +x /usr/bin/orbital-settings
rm -rf ~/.config/picom
mv extra/picom ~/.config/
rm -rf ~/.config/terminator
mv extra/terminator ~/.config
rm -rf ~/.config/rofi
mv extra/rofi ~/.config