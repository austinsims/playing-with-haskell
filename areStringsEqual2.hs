import System.IO
import Data.List

strEq :: [Char] -> [Char] -> Bool
strEq [] [] = True
strEq (x:xs) (y:ys) = x == y && strEq xs ys

test :: String -> String -> String
test x y = x ++ " ?= " ++ y ++ " = " ++ show (strEq x y)

main = do
  let s1 = "Rats"
  let s2 = "Rats"
  let s3 = "Spiders"
  putStrLn (test s1 s2)
  putStrLn (test s2 s3)
  putStrLn (test s1 s3)
