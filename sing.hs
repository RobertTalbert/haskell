-- 1. Capitalize module name
module Sing where

-- Change ++ to ->
fstString :: [Char] -> [Char]
fstString x = x ++ " in the rain"

-- [Char] not Char
sndString :: [Char] -> [Char]
sndString x = x ++ " over the rainbow"

sing = if (x > y) 
    then fstString x 
    else sndString y
    where x = "Singin"
          y = "Somewhere"
    -- Don't use two different "where" statements, just one for the whole group