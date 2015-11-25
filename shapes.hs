data Shape = Circle Float Float Float
           | Rect Float Float Float Float

area :: Shape -> Float
area (Circle _ _ r) = pi * r ^ 2
area (Rect x y x2 y2) = (abs (x2 - x)) * (abs (y2 - y))
