module Exam1 where

split :: String -> Char -> [String]
split "" _ = []
split (x:xs) c
    | x == c    = split xs c
    | otherwise = (x : takeWhile (/= c) xs) : split (dropWhile (/= c) xs) c

convertToInt :: String -> Int
convertToInt str = read str :: Int

averageAge :: String -> Double
averageAge studentsStr = fromIntegral (sum ages) / fromIntegral (length ages)
    where ages = map (convertToInt . last . words) (split studentsStr ',')

getNames :: String -> [String]
getNames studentsStr = map (head . words) (split studentsStr ',')

filterByAge :: String -> Int -> [String]
filterByAge studentsStr threshold = filter (\s -> let age = convertToInt (last (words s)) in age < threshold) (split studentsStr ',')

filterByAgeRange :: String -> Int -> Int -> [String]
filterByAgeRange studentsStr minAge maxAge = filter (\s -> let age = convertToInt (last (words s)) in age >= minAge && age <= maxAge) (split studentsStr ',')
