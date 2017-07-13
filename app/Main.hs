{-# LANGUAGE ScopedTypeVariables #-}

module Main where

import FizzBuzzFib

import Control.Monad (mapM_)
import ReadArgs (readArgs)

main :: IO ()
main = do
  (numberOfEntries :: Int) <- readArgs
  mapM_ putStrLn $ take numberOfEntries fizzBuzzStream
