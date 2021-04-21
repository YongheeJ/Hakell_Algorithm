fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

[출처] [Haskell] 문법 2. 재귀 (Recursion), 패턴 매칭 (pattern matching)|작성자 전용희