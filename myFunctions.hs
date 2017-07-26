myOr :: [Bool] -> Bool
myOr [ ] = False
myOr (x:xs) = x || myOr xs 

myAny :: (a -> Bool) -> [a] -> Bool
myAny f xs = myOr $ [f x | x <- xs]

myElem :: Eq a => a -> [a] -> Bool
myElem t [ ] = False
myElem t (x:xs) = (t == x) || myElem t xs

myReverse :: [a] -> [a] 
myReverse [ ]    = [ ] 
myReverse (x:xs) = (myReverse xs) ++ [x] 

squish :: [[a]] -> [a]
squish [ ] = [ ] 
squish (x:xs)  = x ++ (squish xs)

squishMap :: (a -> [b]) -> [a] -> [b] 
squishMap f [ ] = [ ] 
squishMap f (x:xs) = f x ++ (squishMap f xs)

squishAgain :: [[a]] -> [a]
squishAgain = squishMap id 