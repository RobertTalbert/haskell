-- matchingTuples1.hs
module TupleFunctions where 

addEmUp2 :: Num a => (a,a) -> a 
addEmUp2 (x,y) = x + y

fst3 :: (a,b,c) -> a 
fst3 (x,_,_) = x

third3 :: (a,b,c) -> c
third3 (_,_,z) = z

-- Execise 2
f :: (a,b,c) -> (d,e,f) -> ((a,d), (c,f))
f (x,_,z) (u,_,w) = ((x,u), (z,w))