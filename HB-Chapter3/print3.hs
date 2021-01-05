-- print3.hs

module Print3 where 


-- All values are defined at the top so they're in scope for the whole module
myGreeting :: String 
myGreeting = "hello" ++ " world!"

hello :: [Char] 
hello = "hello"

world :: String
world = "world!"


-- main sits in the bottom and just uses the values from above 
main :: IO() 
main = do
    putStrLn myGreeting
    putStrLn secondGreeting 
    where secondGreeting = concat [hello, " ", world]


