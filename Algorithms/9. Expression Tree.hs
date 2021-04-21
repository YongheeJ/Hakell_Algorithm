data Expr = Number Int
    | Plus   Expr Expr
    | Minus  Expr Expr
    | Times  Expr Expr
    | Divide Expr Expr

evaluate :: Expr -> Int
evaluate (Number n)   = n
evaluate (Plus   e f) = evaluate e + evaluate f
evaluate (Minus  e f) = evaluate e - evaluate f
evaluate (Times  e f) = evaluate e * evaluate f
evaluate (Divide e f) = evaluate e `div` evaluate f