import Data.List

square :: Integer -> Integer
square x = x * x

squares :: [Integer] -> [Integer]
squares x = map square x

-- Without composition
sumOfSquares :: [Integer] -> Integer
sumOfSquares x = sum (map square x)

-- With $
sumOfSquares' :: [Integer] -> Integer
sumOfSquares' x = sum $ map square x

-- With composition
sumOfSquares'' :: [Integer] -> Integer
sumOfSquares'' x = (sum . squares) x

