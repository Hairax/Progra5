module ExpressionEvaluated where

    import Expresion

    eval :: Expression -> Int
    eval (Val x) = x
    eval (Sum x y) = (eval x) + (eval y)
    eval (Mul x y) = (eval x) * (eval y)
    eval (Pow x y) = (eval x) ^ (eval y)
    eval (Div x y) = (eval x) `div` (eval y)
-- Path: ArithmeticsExpresion/src/Expresion.hs