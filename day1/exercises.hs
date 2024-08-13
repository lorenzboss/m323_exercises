-- Aufgabe 1
isEquals :: Int -> Int -> Bool
isEquals x y = x == y

-- >>> isEquals 3 5
-- False
-- >>> isEquals 6 6
-- True

-- Aufgabe 2
isEquals3 :: Int -> Int -> Int -> Bool
isEquals3 a b c = a == b && b == c

-- >>> isEquals3 2 2 3
-- False
-- >>> isEquals3 4 4 4
-- True

-- Aufgabe 3
largerNumber :: Double -> Double -> Double
largerNumber a b
  | a < b = b
  | a > b = a

-- >>> largerNumber 4.1 (-5)
-- 4.1

-- Aufgabe 4
squareValue :: Int -> Int
squareValue a = a ^ 2

-- >>> squareValue 6
-- 36

-- Aufgabe 5
securityClassification :: Int -> String
securityClassification a
  | a >= 0 && a <= 8 = "Keine Gefahr"
  | a == 9 = "Gefahr"
  | a >= 10 && a <= 12 = "Erhebliche Gefahr"
  | otherwise = "Gib bitte eine valide Zahl ein!"

-- >>> securityClassification 0
-- "Keine Gefahr"
-- >>> securityClassification 9
-- "Gefahr"
-- >>> securityClassification 12
-- "Erhebliche Gefahr"
-- >>> securityClassification (-1)
-- "Gib bitte eine valide Zahl ein!"

-- Aufgabe 6
calculateDiscount :: Double -> Double -> Double -> Double
calculateDiscount price limit discount
  | price > limit = price * ((100 - discount) / 100)
  | otherwise = price

-- >>> calculateDiscount 60 40 20
-- 48.0
-- >>> calculateDiscount 60 70 30
-- 60.0
