qsort :: [Int] -> [Int]
qsort [] = []
qsort (pivot:xs) = (qsort lowers) ++ [pivot] ++ (qsort highers)
    where lowers  = filter (<pivot)  xs
          highers = filter (>=pivot) xs