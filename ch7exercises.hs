-- Chapter 7 exercises 

-- 1 
tensDigit :: Integral a => a -> a 
tensDigit x = d 
   where xLast = x `div` 10
         d     = xLast `mod` 10

tensDigit' x = fst (divMod x 10) `mod` 10

hunsD x = d2 
   where xHuns = x `div` 100
         d2    = xHuns `mod` 10 


-- 2 
foldBool :: a -> a -> Bool -> a 
foldBool x y b = 
	case b of 
		True -> x 
		False -> y 

foldBool' :: a -> a -> Bool -> a 
foldBool' x y b
   | b         = x
   | otherwise = y


-- 3 
g :: (a -> b) -> (a,c) -> (b,c)
g f (x,y) = (f x , y)


-- 4 
