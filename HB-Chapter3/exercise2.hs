-- Exercise 2 from Chapter 3 of Haskell Book

module Exercise2 where 

    addBang text = text ++ "!"
    fifthCharacter text = text !! 4
    lastEight text = drop 9 text 
        -- Kind of depends on what the example from the text should do in general