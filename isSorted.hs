import Data.List

isSorted :: Ord a => [a] -> Bool

isSorted x
  | sort x == x = True
  | otherwise = False
