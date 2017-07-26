import Data.Char 

filterUpper :: String -> String
filterUpper s = [x | x <- s, isUpper x]

capFirst :: String -> String
capFirst (c:cs) = [toUpper c] ++ cs

holler :: String -> String
holler "" = ""
holler (c:cs) = [toUpper c] ++ (holler cs)

capHead :: [Char] -> Char 
capHead = toUpper . head 