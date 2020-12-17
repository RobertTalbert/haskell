-- Case practice exercises 

functionC x y = if (x > y) then x else y 
functionC' x y = 
	case result of 
		True -> x 
		False -> y 
	where result = x > y 

ifEvenAdd2 n = if even n then (n+2) else n
ifEvenAdd2' n = 
	case even n of 
		True -> n+2 
		False -> n

nums x = 
	case compare x 0 of 
		LT -> -1
		GT -> 1
		_ -> 0