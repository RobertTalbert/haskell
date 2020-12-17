eftBool :: Bool -> Bool -> [Bool]
eftBool 
    | False False = [False, False]
    | False True  = [False, True]
    | True True   = [True, True]
    | otherwise   = [ ] 


  
