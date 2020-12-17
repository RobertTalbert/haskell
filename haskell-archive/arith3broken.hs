-- arith3broken.hs 

module Arith3Broken where

main :: IO ()
-- main below needs to be lower case b/c main above was. 
main = do
	print (show (1 + 2))
	-- Add quotes for string
	putStrLn "10"
	-- Put negate in parentheses
	print (negate (-1))
	print ((+) 0 blah)
	   where blah = negate 1