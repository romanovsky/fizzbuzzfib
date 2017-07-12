import Numeric.Natural

isPrime :: Natural -> Bool
isPrime n = True

fizzify :: Natural -> FizzBuzz
fizzify n
  | (n `rem` 3) = Fizz
  | (n `rem` 5) = Buzz
  | (n `rem` 15) = FizzBuzz
  | isPrime n = BuzzFizz
  | otherwise = n :: FizzBuzzNatural n

fizzBuzzTransform :: Natural -> Natural -> [FizzBuzz]
fizzBuzzTransform n1 n2 = fizzify n2 : fizzBuzzTransform n2 n3
  where
    n3 = n1 + n2

main = do
  n <- readLn
  print $ take n $ fizzBuzzTransform 0 1
