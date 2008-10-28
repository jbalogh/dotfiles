import System.IO (hPutStrLn)

import XMonad
import XMonad.Config (defaultConfig)
import XMonad.Operations
import qualified XMonad.StackSet as W

import XMonad.Actions.CycleWS
import XMonad.Actions.DynamicWorkspaces
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.SetWMName
import XMonad.Layout.Tabbed
import XMonad.Layout.NoBorders (smartBorders)
import XMonad.Prompt
import XMonad.Prompt.Input
import XMonad.Prompt.Workspace
import XMonad.Util.EZConfig
import XMonad.Util.Run (spawnPipe, unsafeSpawn)


myterm = "urxvtc"
run = unsafeSpawn

nowplaying = "(mpc | head -1; sleep 2) | dzen2 -x 400 -w 500 -bg black -fg magenta"

delkeys :: [String]
delkeys = ["M-S-p", "M-S-q", "M-q", "M-.", "M-,"]

newkeys :: [(String, X ())]
newkeys =
    [ -- first, rebind builtins
      ("M-S-q"       , restart "xmonad" True)
    , ("M-S-."       , sendMessage (IncMasterN 1))
    , ("M-S-,"       , sendMessage (IncMasterN (-1)))

       -- other fun stuff
    , ("C-S-<Return>", spawn myterm)
    , ("M-i"         , spawn "opera")
    , ("M-o"         , spawn "firefox")
    , ("M-s"         , moveTo Next HiddenNonEmptyWS)
    , ("M-a"         , moveTo Prev HiddenNonEmptyWS)
    , ("M-<Up>"      , swapNextScreen)
    , ("M-C-d"       , swapNextScreen)
    , ("M-<Down>"    , swapPrevScreen)
    -- dynamic workspaces
    , ("M-S-o"       , inputPrompt defaultXPConfig "add hidden" ?+ addHiddenWorkspace)
    , ("M-C-o"       , workspacePrompt defaultXPConfig (windows . W.greedyView))
    , ("M-S-<Backspace>", removeWorkspace)
    -- misc
    , ("M4-j"        , setWMName "LG3D")
    , ("M4-o"        , run nowplaying)
    , ("M-S-b"       , sendMessage ToggleStruts)
    , ("C-S-y"       , spawn "xte 'mouseclick 2'")
    , ("M-C-S-l"     , spawn "slock")
    ]
    ++
    [ ("M4-" ++ key, spawn $ "mpc " ++ com)
      | (key, com) <-
          zip ["x"     , "b"   , "c"   , "<Up>"     , "<Down>"   ]
              ["toggle", "next", "prev", "volume +4", "volume -4"]
    ]

myLogHook =
    defaultPP { ppTitle = xmobarColor "green" "" . shorten 80
              , ppCurrent = xmobarColor "yellow" "" . wrap "[" "]"
              , ppVisible = wrap "(" ")"
              }

myLayout = avoidStruts $ tiled ||| simpleTabbed
    where
      tiled = Tall 1 0.03 0.5

main :: IO ()
main = do
  xmobar <- spawnPipe "xmobar"
  xmonad $ defaultConfig
       { -- defaultGaps = [(18,0,0,0)]
         normalBorderColor = "#dddddd"
       , focusedBorderColor = "#5fbf77"
       , borderWidth = 0
       , terminal = myterm
       , layoutHook = smartBorders myLayout
       , logHook = dynamicLogWithPP myLogHook { ppOutput = hPutStrLn xmobar }
       , manageHook = manageDocks
       , startupHook = setWMName "LG3D"
       }
       `removeKeysP` delkeys
       `additionalKeysP` newkeys
