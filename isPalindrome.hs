isPalindrome :: [Char] -> Bool
isPalindrome [] = True
isPalindrome [x] = True
isPalindrome (x:xs) = x == ((reverse xs) !! 0) && isPalindrome (init xs)
