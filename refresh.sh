cp .xinitrc ~/.xinitrc
cp app/Main.hs ~/.config/xmonad/xmonad.hs
cp config.rasi ~/.config/rofi/config.rasi
cp kitty.conf ~/.config/kitty/kitty.conf
cp picom.conf ~/.config/picom/picom.conf
cp pacman.conf /etc/pacman.conf

xmonad --recompile
xmonad --restart

xinput set-prop 12 291 -0.12
xinput set-prop 12 294 0 1
