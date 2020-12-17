-- greetIfCool2.hs

module GreetIfCool2 where

greetIfCool2 :: String -> IO ()
greetIfCool2 coolness = 
	if cool coolness
		then putStrLn "eyyyy. What's shakin?"
	else 
		putStrLn "psssh"
	where cool v = v == "downright frosty yo"
	-- So this way of doing it defines "cool" sort of like
	-- a helping function baked into the main function. 