-- Task 1
multiply :: [Int] -> Int
multiply list = product list

-- >>> multiply [2,5,4]
-- 40

multiply2 :: [Int] -> Int
multiply2 list = foldl (\x y -> x * y) 1 list

-- >>> multiply2 [2,5,8]
-- 129

-- Task 2
multiplyEvenNumbers :: [Int] -> Int
multiplyEvenNumbers list = foldl (\x y -> x * y) 1 (filter even list)

-- >>> multiplyEvenNumbers [1,3,5,7,2,4]
-- 8

-- Task 3
largestInt :: [Int] -> Int
largestInt list = foldl (\x y -> max x y) 0 list

largestInt2 :: [Int] -> Int
largestInt2 = foldl (\x y -> if x > y then x else y) 0

-- >>> largestInt [1,5,7,3]
-- 7
-- >>> largestInt [1,5,9,3]
-- 9

-- Task 4
isTrue :: [Bool] -> Bool
isTrue list = foldl (\x y -> x || y) False list

-- >>> isTrue [True, False, False]
-- True

-- Task 5
weirdFunction :: String
weirdFunction = foldr (:) [] "bbzbl"

-- >>> weirdFunction
-- "bbzbl"

-- Task 6
reverseString :: [a] -> [a]
reverseString = foldl (\acc x -> x : acc) []

reverseString2 :: [a] -> [a]
reverseString2 = foldr (\x acc -> acc ++ [x]) []

-- >>> reverseString "hello"
-- "olleh"

-- >>> reverseString2 "ordnaeL"
-- "Leandro"
