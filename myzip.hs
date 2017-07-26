zip' :: [a] -> [b] -> [(a,b)]
zip' [] ys = [ ]
zip' xs [] = [ ]
zip' (x:xs) (y:ys) = [(x,y)] ++ (zip' xs ys)

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' f [] ys = [ ]
zipWith' f xs [] = [ ]
zipWith' f (x:xs) (y:ys) = [f x y] ++ (zipWith' f xs ys)

awesomeZip :: [a] -> [b] -> [(a,b)]
awesomeZip xs ys = zipWith' (,) xs ys 