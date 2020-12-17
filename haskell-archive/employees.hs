data Employee = Coder
              | Manager 
              | Veep
              | CEO 
              deriving (Eq, Ord, Show)
-- The ordering is defined by the order in which the data instances
-- are listed in the declaration. 

reportBoss :: Employee -> Employee -> IO ()
reportBoss e e' = 
	putStrLn $ show e ++ " is the boss of " ++ show e'

employeeRank :: Employee -> Employee -> IO () 
employeeRank e e' = 
	case compare e e' of 
		GT -> reportBoss e e' 
		EQ -> putStrLn "Neither employee is the boss"
		LT -> (flip reportBoss) e e' 

-- Can use this with the `compare` function
-- Or any other comparison function we cook up 
employeeRank' :: (Employee -> Employee -> Ordering)
               -> Employee
               -> Employee
               -> IO () 
employeeRank' f e e' = 
	case f e e' of 
		GT -> reportBoss e e'
		EQ -> putStrLn "Neither employee is the boss"
		LT -> (flip reportBoss) e e'

