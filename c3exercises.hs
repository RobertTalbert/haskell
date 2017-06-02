-- ch3exercises.hs 

stripLast s = take n s 
    where n = (length s) - 1

-- returnFourth s = 
--     if length s >= 4
--         then s !! 4
--         else "String is too short"

thirdLetter :: String -> Char
thirdLetter x = x !! 2 

letterIndex :: Int -> Char 
letterIndex x = "Curry is awesome" !! (x-1)

rvrs = (drop 9 s) ++ (take 4 (drop 5 s)) ++ (take 5 s)
    where s = "Curry is awesome"