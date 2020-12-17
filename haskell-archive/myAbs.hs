myAbs :: Integer -> Integer

myAbs x = 
    if x >= 0
        then x 
    else
        (-x) 


-- Same thing using guards
myAbs' :: Integer -> Integer
myAbs' x 
   | x < 0     = (-x) 
   | otherwise = x

