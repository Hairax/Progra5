module SepCadena where

    split :: String -> Char ->[String]
    split "" _ =[]
    split (x:xs) c | x == c = split xs c
                   | otherwise = (x :
                        takeWhile (/= c) xs ) :
                            split (dropWhile (/=c) xs) c

    updateWord :: String -> [String]
    updateWord [] = []
    updateWord xs = map (\word->"(" ++ word ++ ")") (split xs ' ')

    splitFunction :: String -> [String]
    splitFunction = words

    -- fac n = 1*2*3* ... *n 
    
    fac :: Int -> Int
    fac n
        | n == 0 = 1
        | otherwise = n * fac (n-1)
    