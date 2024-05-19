#!/usr/bin/bash
clear
yay -Syy
yay --noconfirm -S gdb ninja gcc cmake meson libxcb xcb-proto xcb-util xcb-util-keysyms libxfixes libx11 libxcomposite xorg-xinput libxrender pixman wayland-protocols cairo pango seatd libxkbcommon xcb-util-wm xorg-xwayland libinput libliftoff libdisplay-info cpio tomlplusplus hyprlang hyprcursor
echo "BASE DEPENDENCIES INSTALLED. NEEDED TO BUILD Hyprland"
sleep 3
git clone --recursive https://github.com/hyprwm/Hyprland
cd Hyprland
make -j4 all && sudo make install
clear
sudo pacman --noconfirm -S kitty alacritty sddm btop htop fastfetch neofetch dunst polkit-kde-agent xdg-desktop-portal-wlr xdg-desktop-portal-hyprland qt5-wayland qt6-wayland hyprpaper hypridle hyprlocks waybar rust 

yay --noconfirm -S hyprpicker
