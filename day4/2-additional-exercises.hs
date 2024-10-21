import Data.List (group)
import Distribution.Simple.Utils (xargs)

-- Task 1
largestList :: [[Int]] -> Int
largestList listOfLists = maximum (map sum listOfLists)

-- >>> largestList [[10,10,0],[9,6,8],[3,1,4]]
-- 23

-- Task 2
reduceLetters :: String -> String
reduceLetters (x : xs)
  | null xs = [x]
  | x == head xs = reduceLetters x
  | otherwise = x : reduceLetters xs

reduceLetters2 :: String -> String
reduceLetters2 s = map head (group s)

-- >>> reduceLetters "Hallo?"
-- "Halo?"
-- >>> reduceLetters2 "Hallo?"
-- "Halo?"

-- Task 3
