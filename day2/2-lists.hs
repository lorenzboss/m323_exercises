-- Task 1
-- >>> [1..10]
-- [1,2,3,4,5,6,7,8,9,10]

-- Task 2
-- >>> [x ^ 3 | x <- [1..10]]
-- [1,8,27,64,125,216,343,512,729,1000]

-- Task 3
-- >>> sum [x ^ 3 | x <- [1..10]]
-- 3025

-- Task 4
range :: Int -> Int -> [Int]
range a b = [a .. b]

-- >>> range 5 7
-- [5,6,7]

-- Task 5
summe :: Double -> Double
summe n = sum [1 / x | x <- [1 .. n]]

-- >>> summe 2
-- 1.5

-- Task 6
secondLast :: [a] -> a
secondLast a = a !! (length a - 2)

-- >>> secondLast [1,2,3,4,5]
-- 4

-- Task 7
spaces :: String -> Int
spaces [] = 0
spaces (x : xs)
  | x == ' ' = 1 + spaces xs
  | otherwise = spaces xs

-- >>> spaces "Hello are you  ?"
-- 4

-- Task 8
palindrome :: (Eq a) => [a] -> Bool
palindrome a = a == reverse a

-- >>> palindrome [1,2,3]
-- False
-- >>> palindrome [1,2,1]
-- True

palindrome2 :: (Eq a) => [a] -> Bool
palindrome2 (x : xs)
  | null xs = True
  | length xs == 1 = [x] == xs
  | x /= last xs = False
  | otherwise = palindrome2 (init xs)

-- >>> palindrome2 [1,2,3,2,1]
-- True
-- >>> palindrome2 [1,2,1,2,1]
-- True
-- >>> palindrome2 [1,2,3]
-- False

-- Task 9
double :: [x] -> [x]
double (x : xs)
  | null xs = [x, x]
  | otherwise = x : x : double xs

-- >>> double [1,2,3,4,5]
-- [1,1,2,2,3,3,4,4,5,5]

-- Task 10
firstWord :: String -> String
firstWord sentence = head (words sentence)

-- >>> firstWord "Hello how are you?"
-- "Hello"
