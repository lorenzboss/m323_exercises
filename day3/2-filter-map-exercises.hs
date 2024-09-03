import Data.ByteString (count)
import Data.Char
import Distribution.FieldGrammar (Token (getToken))

-- Task 1
uppercase :: String -> String
uppercase text = map (\x -> toUpper x) text

-- >>> uppercase "leandro isch guet"
-- "LEANDRO ISCH GUET"

-- Task 2
isLowercase :: String -> String
isLowercase text = filter (\x -> isLower x) text

-- >>> isLowercase "LeandrO"
-- "eandr"

-- Task 3
isLowercase2 :: String -> [Bool]
isLowercase2 text = map (\x -> isLower x) text

-- >>> isLowercase2 "BaSel"
-- [False,True,False,True,True]

-- Task 4
isLowercase3 :: String -> Bool
isLowercase3 [] = True
isLowercase3 (x : xs)
  | isLower x = isLowercase3 xs
  | otherwise = False

-- >>> isLowercase3 "leandro"
-- True

-- Task 5
getSmallerNumber :: [Int] -> [Int] -> [Int]
getSmallerNumber [] [] = []
getSmallerNumber listA [] = listA
getSmallerNumber [] listB = listB
getSmallerNumber listA listB = zipWith (\x y -> min x y) listA listB

-- >>> getSmallerNumber [1,2,3,4] [4,3,2,1]
-- [1,2,2,1]

-- Task 6
countChars :: [String] -> [Int]
countChars list = map (\word -> length word) list

-- >>> countChars ["Hallo", "Leandro"]
-- [5,7]

countChars2 :: [String] -> [Int]
countChars2 [] = []
countChars2 (x : xs) = length x : countChars2 xs

-- >>> countChars2 ["das", "Ende", "ist", "nahe"]
-- [3,4,3,4]
