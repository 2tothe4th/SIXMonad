sudo pacman -S xorg-server xorg-apps xorg nvidia nvidia-utils xorg-xinit xorg-twm xorg-xclock xterm xmonad xmonad-contrib \
pipewire wireplumber pipewire-audio pipewire-alsa pipewire-pulse alsa-lib udev alsa-utils alsa-firmware alsa-utils \
kitty noto-fonts nftables git github-cli rofi feh picom

sudo systemctl enable --now nftables
systemctl --user enable --now pipewire pipewire-pulse wireplumber
feh --bg-scale background/mountain.jpg

mkdir -p ~/.config
mkdir -p ~/.config/xmonad
mkdir -p ~/.config/rofi
mkdir -p ~/.config/kitty
mkdir -p ~/.config/picom

bash refresh.sh

