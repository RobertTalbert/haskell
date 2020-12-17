bloodNa :: Integer -> String 

bloodNa x 
   | x < 135   = "too low"
   | x > 145   = "too high"
   | otherwise = "just right"