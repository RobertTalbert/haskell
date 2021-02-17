-- Chapter 5 Learn You A Haskell

max' :: (Ord a) => [a] -> a
max' [] = error "Can't do the max of an empty list"
max' [x] = x     -- Can't just put _ .... why? --> Because you cannot return a blank. 
max' (x:xs)                            -- Originally had "=" DOh! 
    | x > maxTail      = x             -- Originally had maxTail xs, wrong because maxTail is a list 
    | otherwise        = maxTail
    where maxTail = max' xs


replicate' :: (Num a, Ord a) => a -> b -> [b]
replicate' 0 _ = [] 
replicate' n x = x : (replicate' (n-1) x) 
-- replicate' n x
--     | n <= 0     = []
--     | otherwise  = x:replicate' (n-1) x     -- Originally had put the arguments in paren's, can't do that 


