doubleMe x = x + x
doubleUs x y = x*2 + y*2

doubleSmallNumber x = if x > 100
    then x 
    else x*2
-- The "else" is mandatory in Haskell

-- Functions cannot start with uppercase letters


boomBang xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]
length' xs = sum [1 | _ <- xs]

triangles = [ (a,b,c) | a <- [1..10], b <- [1..10], c <- [1..10]]
ans = [(a,b,c) | (a,b,c) <- triangles, a^2 + b^2 == c^2, a+b+c == 24]

