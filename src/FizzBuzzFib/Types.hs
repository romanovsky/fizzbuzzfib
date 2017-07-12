module FizzBuzzFib.Types (
  FizzBuzzFib
)

data FizzBuzz = Fizz |
                Buzz |
                FizzBuzz |
                BuzzFizz |
                FizzBuzzNatural Natural
                deriving (Show)

import Numeric.Natural
