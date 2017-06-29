mth1 x y z = x * y * z 
mth2 x y = \z -> x * y * z 
mth3 x = \y -> \z -> x * y * z 
mth4 = \x -> \y -> \z -> x * y *  z

addOneIfOdd n = case odd n of 
	True -> f n 
	False -> n 
	-- Replace next line with a lambda
	-- where f n = n + 1
	where f = \n -> n + 1

-- Rewrite as lambda: 
addFive x y = (if x > y then y else x) + 5

addFive' = \x -> \y -> (if x > y then y else x) + 5

-- Rewrite without lambda: 
mflip f = \x -> \y -> f y x

mflip' f x y = f y x