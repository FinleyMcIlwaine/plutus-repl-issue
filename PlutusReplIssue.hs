{-# LANGUAGE TemplateHaskell     #-}
{-# LANGUAGE DataKinds           #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE NoImplicitPrelude   #-}

module PlutusReplIssue where

import           Language.PlutusTx
import           Language.PlutusTx.Lift
import           Language.PlutusTx.Code
import           Language.PlutusTx.Builtins
import           Language.PlutusTx.Prelude
import           Language.PlutusCore.Universe as PLC

integerOne :: CompiledCode PLC.DefaultUni Integer
integerOne = $$(compile [|| (1 :: Integer) ||])