bat :: Double -> Double -> String

bat hits atBats
  | avg <= 0.200 = "Terrible"
  | avg <= 0.250 = "Average"
  | avg <= 0.280 = "Good"
  | otherwise = "Superstar"
  where avg = hits / atBats
