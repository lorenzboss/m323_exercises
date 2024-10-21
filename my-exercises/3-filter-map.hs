-- Filter list

removeVowels :: String -> String
removeVowels str = filter (\c -> notElem c "aeiouäöüAEIOUÄÖÜ") str

removeVowels2 :: String -> String
removeVowels2 = filter (`notElem` "aeiouäöüAEIOUÄÖÜ")

-- >>> removeVowels "Hello World!"
-- "Hll Wrld!"

-- >>> removeVowels2 "haskell"
-- "hskll"

-- Map list
squareOdds :: [Int] -> [Int]
squareOdds nums = map (\x -> if odd x then x ^ 2 else x) nums

squareOdds2 :: [Int] -> [Int]
squareOdds2 = map (\x -> if odd x then x ^ 2 else x)

-- >>> squareOdds [5,4,3,2,1]
-- [25,4,9,2,1]

-- >>> squareOdds2 [10,5]
-- [10,25]

-- zipWith list

combineWithAverage :: [Double] -> [Double] -> [Double]
combineWithAverage list1 list2 = zipWith (\x y -> (x + y) / 2) list1 list2

combineWithAverage2 :: [Double] -> [Double] -> [Double]
combineWithAverage2 = zipWith (\x y -> (x + y) / 2)

-- >>> combineWithAverage [2.1,2,3] [2,3,4,5]
-- [2.05,2.5,3.5]
