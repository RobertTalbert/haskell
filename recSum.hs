recSum :: (Eq a, Num a) => a -> a 
recSum n
   | n == 0    = 0 
   | otherwise = n + recSum(n-1)

recProd :: (Integral a) => a -> a -> a 
recProd a 0 = 0 
recProd a b = a + recProd a (b-1) 
-- I messed up on this by not parenthesizing the b-1. 

recProd' :: (Integral a) => a -> a -> a 
recProd' a b 
   | b == 0    = 0 
   | otherwise = a + recProd a (b-1)

