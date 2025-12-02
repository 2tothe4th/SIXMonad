module Main where

import XMonad
import XMonad.Util.EZConfig
import XMonad.Util.Ungrab

import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.StatusBar
import XMonad.Hooks.StatusBar.PP

import XMonad.Layout.NoBorders

main :: IO ()
main = xmonad 
    . ewmhFullscreen 
    . ewmh 
    $ mainConfig

-- mainConfig :: XConfig (Choose Tall (Choose (Mirror Tall) (ModifiedLayout WithBorder Full)))
mainConfig = def {
    terminal = "kitty",
    modMask = mod4Mask,
    normalBorderColor = "#202020",
    focusedBorderColor = "#ffc0ff",
    focusFollowsMouse = False,
    clickJustFocuses = False,
    borderWidth = 4,
    layoutHook = mainLayout
}

mainLayout = half ||| Mirror half ||| smartBorders Full where
    half = Tall 1 (3/100) (1/2)

ppConfig :: PP
ppConfig = def
