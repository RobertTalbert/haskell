-- Chapter 10 exercise 1

ex_10a = [(s,v,t) | s <- stops, v <- vowels, t <- stops]
   where stops = "pbtdkg"
         vowels = "aeiou"

ex_10b = [('p',v,t) | v <- vowels, t <- stops]
   where stops = "pbtdkg"
         vowels = "aeiou"

seekritFunc x = 
    div (sum (map length (words x))) (length (words x))

seekritFunc' x = 
    (/) (fromIntegral (sum (map length (words x)))) (fromIntegral (length (words x)))

-- The actual exercises
-- Rewriting recursion using folds

myOr :: [Bool] -> Bool
myOr = foldr (||) False

myAnyrec :: (a -> Bool) -> [a] -> Bool
myAnyrec f [ ] = False
myAnyrec f (x:xs) = (f x) || myAnyrec f xs 

myAny :: (a -> Bool) -> [a] -> Bool
myAny f = foldr (\a b -> if (f a) == True then True
	                     else b) False

myAny' :: (a -> Bool) -> [a] -> Bool
myAny' f = foldr ((||).f) False

myElemrec :: Eq a => a -> [a] -> Bool
myElemrec a [ ] = False
myElemrec a (x:xs) = (a == x) || myElemrec a xs

myElem :: Eq a => a -> [a] -> Bool
myElem x = foldr (\a b -> (x==a) || b) False 

-- myElem' :: Eq a => a -> [a] -> Bool
-- myElem' x = foldr ((||).(==)) False

myReverserec :: [a] -> [a] 
myReverserec [ ] = [ ] 
myReverserec (x:xs) = (myReverserec xs) ++ [x] 

myReverse :: [a] -> [a] 
myReverse = foldl (flip (:)) [ ]

--

myMaprec :: (a -> b) -> [a] -> [b] 
myMaprec f [ ]    = [ ] 
myMaprec f (x:xs) = (f x) : myMaprec f xs

myMap :: (a -> b) -> [a] -> [b] 
myMap f = foldr ((:).f) [ ]  

-- 

squishrec :: [[a]] -> [a] 
squishrec [ ]    = [ ] 
squishrec (x:xs) = x ++ squishrec xs

squish :: [[a]] -> [a] 
squish = foldr (++) [ ] 

squishMaprec :: (a -> [b]) -> [a] -> [b]
squishMaprec f [ ] = [ ]
squishMaprec f (x:xs) = (f x) ++ squishMaprec f xs

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap f = foldr ((++).f) [ ] 
