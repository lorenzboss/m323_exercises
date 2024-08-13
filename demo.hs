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
