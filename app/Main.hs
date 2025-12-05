module Main where

import XMonad hiding (float)
import XMonad.Util.EZConfig
import XMonad.Util.Ungrab

import XMonad.Hooks.DynamicLog
import XMonad.Hooks.StatusBar
import XMonad.Hooks.StatusBar.PP
import XMonad.Layout.NoBorders
import XMonad.Layout.Fullscreen
import XMonad.StackSet

main :: IO ()
main = xmonad mainConfig

-- mainConfig :: XConfig (Choose Tall (Choose (Mirror Tall) (ModifiedLayout WithBorder Full)))
mainConfig = fullscreenSupportBorder $ def {
    terminal = "kitty",
    modMask = mod4Mask,
    normalBorderColor = "#202020",
    focusedBorderColor = "#ffc0ff",
    focusFollowsMouse = False,
    clickJustFocuses = False,
    borderWidth = 4,
    layoutHook = mainLayout,
    manageHook = fullscreenManageHook,
    handleEventHook = fullscreenEventHook
} `additionalKeysP` [
    ("<XF86AudioRaiseVolume>", spawn "amixer sset Master 10%+"),
    ("<XF86AudioLowerVolume>", spawn "amixer sset Master 10%-"),
    ("M-<Space>", spawn "rofi -show run"),
    -- https://www.reddit.com/r/xmonad/comments/hm2tg0/how_to_toggle_floating_state_on_a_window/ 
    ("M-f", withFocused $ \window -> windows $ float window (RationalRect 0 0 1 1))
    ]

mainLayout = fullscreenFull $ half ||| Mirror half ||| Full where
    half = Tall 1 (3/100) (1/2)

ppConfig :: PP
ppConfig = def
