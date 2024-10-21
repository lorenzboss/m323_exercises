rotateLeft :: [x] -> Int -> [x]
rotateLeft list 0 = list
rotateLeft (x : xs) y = rotateLeft (xs ++ [x]) (y - 1)

rotateLeft2 :: [x] -> Int -> [x]
rotateLeft2 list 0 = list
rotateLeft2 list y = rotateLeft2 (tail list ++ [head list]) (y - 1)

-- >>> rotateLeft2 ["a","b","c"] 2
-- ["c","a","b"]
