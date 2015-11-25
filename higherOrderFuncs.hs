import Data.List
import System.IO

getAddFunc :: Int -> (Int -> Int)
getAddFunc x y = x + y

add3 = getAddFunc 3
fourPlus3 = add3 4
