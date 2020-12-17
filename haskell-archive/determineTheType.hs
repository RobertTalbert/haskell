{-# LANGUAGE NoMonomorphismRestriction #-}

module DetermineTheType where 

example = (length [1, 2, 3, 4]) > (length "TACOCAT")

-- x = 5
-- y = x+5
-- w = y* 10
-- z y = y * 10 
-- f = 4 / y

-- x = "Julie"
-- y = " <3 "
-- z = "Haskell"
-- f = x ++ y ++ z 

x = print
y = print "woohoo!" 
z = x "hello world"

-- a=(+) 
-- b= 5
-- c= b 10 
-- d= c 200

-- a=12+b 
--     where b=10000*c