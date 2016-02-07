import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO
import XMonad.Layout.Spacing
import XMonad.Layout.Gaps

gapWidth = 3

main = do
    xmproc <- spawnPipe "xmobar"
    xmonad $ defaultConfig
        { terminal = "terminator",
          logHook = dynamicLogWithPP xmobarPP
                        { ppOutput = hPutStrLn xmproc
                        , ppCurrent = xmobarColor "#aaaaff" "" . wrap "{" "}" . shorten 50
                        , ppTitle = xmobarColor "#aaaaff" "" . shorten 50
                        },
          manageHook = manageDocks <+> manageHook defaultConfig,
          layoutHook = avoidStruts $ spacing gapWidth $ gaps [(U,gapWidth),(D,gapWidth),(L,gapWidth),(R,gapWidth)] $ layoutHook defaultConfig,
          handleEventHook = mconcat [docksEventHook, handleEventHook defaultConfig ],
          focusedBorderColor = "#ffffff"
        }
