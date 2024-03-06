module Lib
    ( someFunc
    ) where

import ExpressionEvaluated
import Expresion

someFunc :: IO ()
someFunc = print (eval (Sum (Val 2) (Mul (Val 3)(Val 5))))
