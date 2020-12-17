multThree :: Integral a => [a] -> [a] 
multThree xs = filter (\x -> mod x 3 == 0) xs

numMultThree :: Integral a => [a] -> Int
numMultThree xs = length . multThree $ xs

myFilter s = filter (\c -> not (elem c ["the", "a", "an"])) $ (words s) 