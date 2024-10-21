-- --------------------------- foldL ---------------------------

countEvens :: [Int] -> Int
countEvens = foldl (\acc x -> if even x then acc + 1 else acc) 0

-- >>> countEvens [1,2,3,4]
-- 2

-- [{(0 1 -> 0) 2 -> 1} 3 -> 1] 4 -> 2

-- --------------------------- foldR ---------------------------

concatWithSeparator :: String -> [String] -> String
concatWithSeparator sep = foldr (\x acc -> if null acc then x else x ++ sep ++ acc) ""

-- >>> concatWithSeparator " & " ["a", "b", "c"]
-- "a & b & c"

-- "a" {"b" ("c" "" -> "c") -> "b & c"} -> "a & b & c"

-- --------------------------- EXTRA ---------------------------

countEvensFoldl2 :: [Int] -> Int
countEvensFoldl2 = foldr (\x acc -> if even x then acc + 1 else acc) 0

-- >>> countEvensFoldl2 [1,2,3,4,5,6]
-- 3

-- [{(0 1 -> 0) 2 -> 1} 3 -> 1] 4 -> 2

-- foldl
-- 0 1 -> 0
--        0 2 -> 1
--               1 3 -> 1
--                      1 4 -> 2
--                             2 5 -> 2
--                                    2 6 -> 3

-- foldr
-- 6 0 -> 1
--      5 1 -> 1
--           4 1 -> 2
--                3 2 -> 2
--                     2 2 -> 3
--                          1 3 -> 3
