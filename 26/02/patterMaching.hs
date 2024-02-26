module SepCadena where 

    split :: String -> Char ->[String]
    split "" _ =[]
    split (x:xs) c | x == c = split xs c
                   | otherwise = (x : head (split xs c)) : tail (split xs c) 

    splitP :: String -> [String]
    splitP "" = []
    splitP xs = ys : (splitP . drop 1) zs
        where (ys, zs) = span (/=' ') xs


