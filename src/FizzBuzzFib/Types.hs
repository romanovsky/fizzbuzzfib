module FizzBuzzFib.Types (
  FizzBuzz(..),
  Presentable(..)
) where

import Numeric.Natural

class Presentable a where
  present :: a -> String
  presentList :: [a] -> String

data FizzBuzz = Fizz | Buzz | FizzBuzz | BuzzFizz | FizzBuzzNatural Natural deriving (Show, Eq)

instance Presentable FizzBuzz where
  present (FizzBuzzNatural n) = show n
  present x = show x
  presentList xs = unwords $ map present xs

