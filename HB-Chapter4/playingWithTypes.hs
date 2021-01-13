-- Playing with types in HB 4

data Mood = Blah | Woot deriving Show 

changeMood :: Mood -> Mood
changeMood Blah = Woot
changeMood    _ = Blah