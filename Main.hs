{-# LANGUAGE OverloadedStrings #-}

import System.Environment
import Web.Scotty

main :: IO ()
main = do
    port  <- getEnv "PORT"

    scotty (read port) $ do
        get "/" $ do
            file "index.html"

        get "/style.css" $ do
            file "style.css"

        notFound $ file "404.html"
