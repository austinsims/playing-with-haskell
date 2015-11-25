import Data.List
import System.IO

main = do
  let p0 = ""
  let p1 = "x"
  let p2 = "racecar"
  let p3 = "dumbledore"
  let strings = [p0, p1, p2, p3]
  let arePalindromes =
        map (\x -> x ++ ": " ++ show (palin x)) strings
  mapM_ putStrLn arePalindromes
  --putStrLn (p1 ++ ": " ++ show (palin p1))

palin :: [Char] -> Bool

palin [] = True
palin [x] = True
palin (x:xs) = x == last xs && palin (init xs)

