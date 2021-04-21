bsearch :: Int -> [Int] -> Bool
bsearch x [] = False
bsearch x ys
    | x  < mid = bsearch x (take m ys)
    | x == mid = True
    | x  > mid = bsearch x (drop (m+1) ys)
    where m = (length ys) `div` 2
          mid = ys !! m