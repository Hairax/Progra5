module Expresion (Expression(..))where

data Expression = Val Int 
    | Sum Expression Expression 
    | Mul Expression Expression 
    | Pow Expression Expression 
    | Div Expression Expression  deriving (Show)