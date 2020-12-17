safeTail		:: [a] -> Maybe [a]
safeTail []		= Nothing
safeTail (x:[])	= Nothing
safeTail (x:xs)	= Just xs