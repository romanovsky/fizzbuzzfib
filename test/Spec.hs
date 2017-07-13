import Test.QuickCheck

import FizzBuzzFib (fizzify, fizzBuzzStream)
import FizzBuzzFib.Types
import Numeric.Natural
import Data.Numbers.Primes (isPrime) -- use a different prime numbers implementation


prop_fizzify :: Natural -> Bool
prop_fizzify n =  case fizzify n of
                    Fizz ->  (n `rem` 3) == 0
                    Buzz -> (n `rem` 5) == 0
                    FizzBuzz -> (n `rem` 15) == 0
                    BuzzFizz -> isPrime (toInteger n)
                    otherwise -> True

prop_fizzBuzzStream1M = length (take 1000000 fizzBuzzStream) == 1000000

main = do
  quickCheckWith stdArgs { maxSuccess = 10000 } prop_fizzify
  quickCheck prop_fizzBuzzStream1M
