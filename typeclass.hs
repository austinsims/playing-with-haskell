data Size = S | M | L

-- Specify how your type implements a type class
instance Eq Size where
  S == S = True
  M == M = True
  L == L = True
  _ == _ = False

-- And again
instance Show Size where
  show S = "Small"
  show M = "Medium"
  show L = "Large"

-- Our own type
data Employee = Employee {
    name :: String,
    job :: String,
    size :: Size
  } deriving (Eq, Show)

-- Make your own type class
class MyEq a where
  areEqual :: a -> a -> Bool

instance MyEq Size where
  areEqual S S = True
  areEqual M M = True
  areEqual L L = True
