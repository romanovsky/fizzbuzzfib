module FizzBuzzFib
    (
      fizzBuzzStream
     ,fizzify
    ) where

import FizzBuzzFib.Types
import Numeric.Natural (Natural)
import Data.Numbers.Primes (isPrime)
import Data.Numbers.Fibonacci (fib)

-- We could've exploit properties of Fibonacci sequence to get
-- primes faster. Though it isn't the point of this test, right?
fizzify :: Natural -> FizzBuzz
fizzify n
  | (n `rem`  3)==0 = Fizz
  | (n `rem`  5)==0 = Buzz
  | (n `rem` 15)==0 = FizzBuzz
  | isPrime n       = BuzzFizz
  | otherwise       = FizzBuzzNatural n


fizzBuzzStream :: [String]
fizzBuzzStream = map (present.fizzify.fib) [1..]
