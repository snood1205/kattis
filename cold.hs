cold :: [Int] -> Int
cold = foldl (\a x -> if x < 0 then a + 1 else a) 0

