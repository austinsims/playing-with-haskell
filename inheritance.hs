class Area x where area :: x -> Float

data Shape = Circle { radius :: Float } | Square { sideLen :: Float }
instance Area Shape where
  area (Square { sideLen = sideLen }) = sideLen * sideLen
  area (Circle { radius = radius } ) = pi * (radius ^ 2)
