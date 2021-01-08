-- Actually exercises 3-5 from Chapter 3 of Haskell Book

module Exercise3 where 

    thirdletter :: [Char] -> Char
    thirdletter text = text !! 2

    -- Exercise 4
    letterIndex :: Int -> Char 
    letterIndex x = text !! x where 
        text = "Curry is awesome!" 

    -- Exercise 5
    rvrs :: [Char]
    rvrs = (drop 9 text) ++ " " ++ (drop 6 (take 8 text)) ++ " " ++ (take 5 text) where
        text = "Curry is awesome"