data Tree a = Node a (Tree a) (Tree a) | Empty
    deriving Show

insert :: Ord a => a -> Tree a -> Tree a
insert x Empty = Node x Empty Empty
insert x (Node y l r)
    | x == y = Node y l r
    | x < y  = Node y (insert x l) r
    | x > y  = Node y l (insert x r)

buildtree :: (Ord a) => [a] -> Tree a
buildtree []     = Empty
buildtree (x:xs) = insert x (buildtree xs)