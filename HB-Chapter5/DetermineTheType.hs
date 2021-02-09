module DetermineTheType where

    example = 1
    
    x = 5
    y = x + 5
    w = y * 10


    bigNum = (^) 5
    wahoo = bigNum $ 10

    -- a = (+)
    -- b = 5
    -- c = a 10
    -- d = c 200

    functionC :: Ord a => a -> a  -> Bool
    functionC x y = 
        if (x > y) then True else False

    functionS :: (a,b) -> b
    functionS (x,y) = y

    functionT (w,z) = z

    c :: a -> b -> a
    c x y = x

    r :: [a] -> [a]
    r x = tail x

    co :: (b -> c) -> (a -> b) -> (a -> c)
    co g f x = g $ (f $ x)

    a :: (a -> c) -> a -> a
    a f x = x

    a' :: (a -> b) -> a -> b    
    a' f x = f $ x