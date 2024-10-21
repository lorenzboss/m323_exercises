-- Hello world

printHello :: String
printHello = "Hello World!"

-- >>> printHello
-- "Hello World!"

-- >>> main
-- "Hello World!"

multiply :: Int -> Int -> Int
multiply _ 0 = 0
multiply 0 _ = 0
multiply 1 y = y
multiply x 1 = x
multiply x y = x * y

-- >>> multiply 4 3
-- 12

isPositive :: Int -> Bool
isPositive x
  | x > 0 = True
  | otherwise = False

-- >>> isPositive (-12)
-- False

holeScore :: Int -> Int -> String
holeScore strokes par
  | strokes < par = "under par"
  | strokes == par = "par"
  | strokes > par = "over par"

areaOfTriangle :: Double -> Double -> Double
areaOfTriangle base height = halfBase * height
  where
    halfBase = base / 2

-- foldl (\x y -> 2*x + 3*y) 0 [7,4,23,5]
-- 369
-- 2* (2* (2* (2*0 + 3*7) + 3*4) + 3*23) + 3*5 = 369

--

-- foldl (-) 0 [7,4,23,5]
-- -39
-- (((0-7)-4)-23)-5

-- Funktion (Startwert/Ergebnis + Neuer Wert)

--

-- foldr (-) 0 [7,4,23,5]
-- 21
-- 7-(4-(23-(5-0)))

-- Funktion (Neuer Wert + Startwert/Ergebnis)