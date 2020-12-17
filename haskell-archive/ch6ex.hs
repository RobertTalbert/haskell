-- Exercises for Chapter 6

-- x :: Int -> Int
-- x blah = blah + 20

-- printIt :: IO () 
-- printIt = putStrLn (show x 10)

--------

-- Doesn't check unless you add the "deriving Show" part. 
data Person = Person Bool deriving Show 

printPerson :: Person -> IO () 
printPerson person = putStrLn (show person)

-----

-- Doesn't check unless you put "deriving Eq"
data Mood = Blah | Woot deriving (Eq, Show)  
settleDown x = if x == Woot 
	             then Blah
	             else x

-----

-- This checks as is. 
type Subject = String
type Verb = String
type Object = String

data Sentence = Sentence Subject Verb Object deriving (Eq, Show) 

s1 = Sentence "dogs" "drool"
s2 = Sentence "Julie" "loves" "dogs"


-----

data Rocks = Rocks String deriving (Eq, Show)
data Yeah = Yeah Bool deriving (Eq, Show) 
data Papu = Papu Rocks Yeah deriving (Eq, Show) 

-- This works
equalityForAll :: Papu -> Papu -> Bool
equalityForAll p p' = p == p' 

-- This doesn't because Papu does not derive from Ord
-- comparePapus :: Papu -> Papu -> Bool
-- comparePapus p p' = p > p'

-----

import Data.List
-- jung :: Ord a => [a] -> a
-- jung xs = head (sort xs) 



