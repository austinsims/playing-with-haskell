double :: Int -> Int
double x = x * 2

doubleAll :: [Int] -> [Int]
doubleAll [] = []
doubleAll (x:xs) = double x : doubleAll xs

myMap :: (a -> b) -> [a] -> [b]
myMap callee [] = []
myMap callee (x:xs) = callee x : myMap callee xs
