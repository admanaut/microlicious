{-# LANGUAGE DataKinds       #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeOperators   #-}
{-# LANGUAGE DeriveGeneric   #-}

module Epic where

import Data.Aeson
import Data.Aeson.TH
import GHC.Generics
import Servant

type EpicAPI
  =    "images" :> Get '[JSON] String

epicApi :: Proxy EpicAPI
epicApi = Proxy

images :: Server EpicAPI
images = undefined
