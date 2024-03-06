

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

----- y combinator -----

y :: (a -> a) -> a
y f = f (y f)

fY :: (Integer -> Integer) -> (Integer -> Integer)
fY f = \n -> if n == 0 then 1 else n * f (n - 1)

factorial_Y :: Integer -> Integer
factorial_Y = y fY


