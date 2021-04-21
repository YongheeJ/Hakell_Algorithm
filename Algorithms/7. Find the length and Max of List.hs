data List a = ListNode a (List a) | ListEnd

mylength :: List a -> Int
mylength ListEnd      = 0
mylength (ListNode x xs) = 1 + mylength xs

mymaximum :: Ord a => List a -> a
mymaximum (ListNode x ListEnd) = x
mymaximum (ListNode x xs)
    | x > maxxs = x
    | otherwise = maxxs
    where maxxs = mymaximum xs