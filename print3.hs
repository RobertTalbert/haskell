-- print3.hs 

module Print3 where

-- Top-level definitions
-- All variables are defined prior to main
myGreeting :: String
myGreeting = "hello" ++ " world!"

hello :: String
hello = "hello"

world :: String 
world = "world!"


-- Then main just works with the definitions
main :: IO ()
main = do 
	putStrLn myGreeting
	putStrLn secondGreeting
	where secondGreeting = concat [hello, " ", world]