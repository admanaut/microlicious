{-# LANGUAGE TypeOperators   #-}

module Server where

import           Network.Wai
import qualified Network.Wai.Handler.Warp as Warp
import           Servant
import           Epic

type API = EpicAPI

api :: Proxy API
api = Proxy

server :: Server API
server = handler

app :: Application
app = serve api server

run :: Int -> IO ()
run port = Warp.run port app
