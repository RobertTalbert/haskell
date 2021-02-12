--- Chapter 4, Learn You a Haskell

lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky _ = "Out of luck"

-- binomial :: (Integral a) -> a -> a -> a
-- binomial n 0 = n
-- binomial _ _ = 1
-- binomial n k = (binomial (n-1) k) + (binomial (n-1) (k-1))

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial(n-1)

head' :: [a] -> a
head' [] = error "That's an empty list"
head' (x:_) = x

length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs

bmiTell :: (RealFloat a) => a -> String
bmiTell bmi 
    | bmi <= 18.5 = "You're underweight, you emo you!"
    | bmi <= 25.0 = "You're supposedly normal. Pffffft, I bet you're ugly!"
    | bmi <= 30.0 = "You're fat! Eat a salad!"
    | otherwise   = "You're a whale, congratulations!"

binomial :: (Integral a) => a -> a -> a
binomial n k 
    | k == 0      = n
    | n == k      = 1
    | otherwise   = binomial (n-1) k + binomial (n-1) (k-1)

max' :: (Ord a) => a -> a -> a
max' a b 
    | a > b      = a
    | otherwise  = b


-- binomial2 :: (Integral a) => a -> a -> a 
-- binomial2 n k 
--     | n == k    = 1
--     | k == 0    = n
--     | otherwise = f(n) / (f(n-k) * f(k))
--     where f a = 
--         | a == 0    = 1
--         | otherwise = a * f(a-1)

cylinder :: (RealFloat a) => a -> a -> a
cylinder r h =
    let sideArea = 2 * pi * r * h 
        topArea  = pi * r^2
    in sideArea + 2 * topArea

cylinder' :: (RealFloat a) => a -> a -> a 
cylinder' r h = sideArea + 2 * topArea
    where sideArea = 2 * pi * r * h 
          topArea = pi * r^2