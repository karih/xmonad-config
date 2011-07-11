import qualified Data.Map as M

import XMonad
import XMonad.Layout.NoBorders

main = do 
  xmonad $ defaultConfig 
    { modMask = mod4Mask,
      terminal = "sakura",
      keys = \c -> myKeys c `M.union` keys defaultConfig c,
      layoutHook = smartBorders $ layoutHook defaultConfig
    } 
  where 
    myKeys (XConfig {modMask = modm}) = M.fromList $
      [ ((mod1Mask .|. controlMask, xK_l), spawn "xscreensaver-command -lock")
      ,  ((mod4Mask, xK_p), spawn "gmrun")
      ]
