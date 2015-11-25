grade :: Integer -> Char

grade x
  | x >= 90 = 'A'
  | x >= 80 = 'B'
  | x >= 70 = 'C'
  | x >= 60 = 'D'
  | otherwise = 'F'
