import Data.ByteString (count)
import Data.Char
import Distribution.FieldGrammar (Token (getToken))

-- --------------------------- MAP ---------------------------
-- Task 1
uppercase :: String -> String
uppercase text = map (\x -> toUpper x) text

-- >>> uppercase "leandro isch guet"
-- "LEANDRO ISCH GUET"

-- Task 3
isLowercase2 :: String -> [Bool]
isLowercase2 text = map (\x -> isLower x) text

-- >>> isLowercase2 "BaSel"
-- [False,True,False,True,True]

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

-- --------------------------- FILTER ---------------------------

-- Task 2
isLowercase :: String -> String
isLowercase text = filter (\x -> isLower x) text

-- >>> isLowercase "LeandrO"
-- "eandr"

-- Task 4
isLowercase3 :: String -> Bool
isLowercase3 [] = True
isLowercase3 (x : xs)
  | isLower x = isLowercase3 xs
  | otherwise = False

isLowercase4 :: String -> Bool
isLowercase4 x = and (isLowercase2 x)

-- >>> isLowercase3 "leandro"
-- True

-- >>> isLowercase4 "hallo"
-- True

-- --------------------------- ZipWith ---------------------------

-- Task 5
getSmallerNumber :: [Int] -> [Int] -> [Int]
getSmallerNumber [] [] = []
getSmallerNumber listA [] = listA
getSmallerNumber [] listB = listB
getSmallerNumber listA listB = zipWith (\x y -> min x y) listA listB

getSmallerNumber2 :: [Int] -> [Int] -> [Int]
getSmallerNumber2 listA listB = zipWith (\x y -> if x > y then y else x) listA listB

-- >>> getSmallerNumber [1,2,3,4] [4,3,2,1]
-- [1,2,2,1]

-- >>> getSmallerNumber2 [1,2,1,4] [4,3,2,1]
-- [1,2,1,1]
