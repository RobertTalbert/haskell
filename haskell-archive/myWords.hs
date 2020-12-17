myWords :: String -> [String]
myWords " "		= [ ] 
myWords x   
  | dropWhile (/=' ') x == "" = [x]
  | otherwise = (takeWhile (/=' ') x) : myWords(drop 1 (dropWhile (/=' ') x))
