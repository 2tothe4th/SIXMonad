cp .xinitrc ~/.xinitrc
cp app/Main.hs ~/.config/xmonad/xmonad.hs
cp config.rasi ~/.config/rofi/config.rasi
cp kitty.conf ~/.config/kitty/kitty.conf
cp picom.conf ~/.config/picom/picom.conf

xmonad --recompile
xmonad --restart
