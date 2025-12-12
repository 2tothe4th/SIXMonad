sudo cp pacman.conf /etc/pacman.conf
sudo pacman -Syu
sudo pacman -S xorg-server xorg-apps xorg nvidia nvidia-utils xorg-xinit xorg-twm xorg-xrandr xorg-xmessage xmonad xmonad-contrib xorg-xinput \
    pipewire wireplumber pipewire-audio pipewire-alsa pipewire-pulse \
    alsa-lib udev alsa-utils alsa-firmware alsa-utils \
    kitty noto-fonts nftables git github-cli rofi picom firefox flatpak scrot

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo >>/home/sixteen/.bashrc
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >>/home/sixteen/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

sudo systemctl enable --now nftables
systemctl --user enable --now pipewire pipewire-pulse wireplumber
feh --bg-scale background/aurora.jpg

mkdir -p ~/.config/xmonad
mkdir -p ~/.config/rofi
mkdir -p ~/.config/kitty
mkdir -p ~/.config/picom

bash refresh.sh
