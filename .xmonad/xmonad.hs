import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO
import XMonad.Layout.Spacing
 
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
          layoutHook = avoidStruts $ smartSpacing 5 $ layoutHook defaultConfig,
          handleEventHook = mconcat [docksEventHook, handleEventHook defaultConfig ],
          focusedBorderColor = "#ffffff"
        }
