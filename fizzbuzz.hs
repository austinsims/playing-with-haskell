import System.IO

main = do
  let strings = map fizzbuzz [1..100]
  mapM_ putStrLn strings

divisible :: Integer -> Integer -> Bool
divisible divided divisor = mod divided divisor == 0

fizzbuzz :: Integer -> String
fizzbuzz x
  | divisible x 15 = "FizzBuzz"
  | divisible x 5 = "Buzz"
  | divisible x 3 = "Fizz"
  | otherwise = show x