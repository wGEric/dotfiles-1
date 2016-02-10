import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import XMonad.Layout.NoBorders
import XMonad.Layout.Gaps
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig
import System.IO
import Graphics.X11.ExtraTypes.XF86 
import qualified XMonad.StackSet as W

main = do
  xmproc <- spawnPipe "/usr/bin/xmobar ~/.xmonad/xmobarrc"
  xmonad $ defaultConfig
        { manageHook = manageDocks <+> manageHook defaultConfig
        , layoutHook = avoidStruts  $  layoutHook defaultConfig
        , logHook = dynamicLogWithPP xmobarPP
                        { ppOutput = hPutStrLn xmproc
                        , ppTitle = xmobarColor "green" "" . shorten 50
                        }
        , modMask = mod4Mask     -- Rebind Mod to the Windows key
        , focusFollowsMouse = False
        , workspaces = ["1","2","3","4","5","6","7","8","9"]
        } `additionalKeys`
        [ ((mod4Mask .|. shiftMask, xK_l), spawn "gnome-screensaver-command -l")
          , ((mod4Mask .|. shiftMask, xK_d), spawn "autorandr --change --default mobile")
          , ((0, xF86XK_MonBrightnessUp), spawn "xbacklight +5")
          , ((0, xF86XK_MonBrightnessDown), spawn "xbacklight -5")
          , ((0, xF86XK_AudioLowerVolume), spawn "amixer -D pulse sset Master 5%-")
          , ((0, xF86XK_AudioRaiseVolume), spawn "amixer -D pulse sset Master 5%+")
          , ((0, xF86XK_AudioMute), spawn "amixer -D pulse sset Master toggle")
        ]
