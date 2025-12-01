module Main where

import XMonad
import XMonad.Util.EZConfig
import XMonad.Util.Ungrab

import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.StatusBar
import XMonad.Hooks.StatusBar.PP

main :: IO ()
main = xmonad 
    . ewmhFullscreen 
    . ewmh 
    $ mainConfig

mainConfig :: XConfig (Choose Tall (Choose (Mirror Tall) Full))
mainConfig = def {
    terminal = "xterm",
    modMask = mod4Mask,
    normalBorderColor = "#202020",
    focusedBorderColor = "#ffffff",
    borderWidth = 4
}

ppConfig :: PP
ppConfig = def
