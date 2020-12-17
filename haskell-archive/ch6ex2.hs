-- Changing Ord a => [a] -> a to [Int] -> Int doesn't change how the function 
-- *works*, but it changes the data that it can operate on. 

import Data.List 
jung :: [Int] -> Int
jung xs = head (sort xs) 

------

young :: Ord a => [a] -> a 
young xs = head (sort xs)

-----

mySort :: [Char] -> [Char]
mySort = sort 

signifier :: [Char] -> Char 
signifier xs = head (mySort xs)