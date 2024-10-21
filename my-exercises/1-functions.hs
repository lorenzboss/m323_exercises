-- Function with two parameters
computeTax :: Double -> Double -> Double
computeTax price taxRate = price * (1 + taxRate / 100)

-- >>> computeTax 100 10
-- 110.00000000000001

-- Recursive function

powerSum :: Int -> Int -> Int
powerSum 1 y = 1
powerSum x y = x ^ y + powerSum (x - 1) y

-- >>> powerSum 3 6
-- 794

-- 3^6+2^6+1^6+0^6 = 794
