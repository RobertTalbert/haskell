module Cipher where

import Data.Char

caesarSingle :: Int -> Char -> Char 
caesarSingle shift c
   | c == ' '  = ' '
   | isUpper c = chr ((mod ((ord c) - 65 + shift) 26) + 65) 
   | otherwise = chr ((mod ((ord c) - 97 + shift) 26) + 97) 

caesar :: Int -> String -> String 
caesar n = map (caesarSingle n) 

uncaesar :: Int -> String -> String
uncaesar n = map (caesarSingle (mod (26-n) 26))