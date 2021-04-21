maxi :: [Int] -> Int
maxi []  = 0
maxi [x] = x
maxi (x:xs)
    | x > maxxs = x
    | otherwise = maxxs
    where maxxs = maxi xs
