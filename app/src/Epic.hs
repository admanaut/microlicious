{-# LANGUAGE DataKinds       #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeOperators   #-}
{-# LANGUAGE DeriveGeneric   #-}

module Epic where

import Data.Aeson
import Data.Aeson.TH
import GHC.Generics
import Servant

type Pong = String

type EpicAPI
  =    "images" :> Get '[JSON] String
  :<|> "ping" :> Get '[JSON] Pong

epicApi :: Proxy EpicAPI
epicApi = Proxy

handler :: Server EpicAPI
handler = getImages :<|> ping

getImages :: Handler String
getImages = undefined

ping :: Handler Pong
ping = pure "pong"
