-- Task 1
sumUp :: Int -> Int
sumUp 1 = 1
sumUp n = n + sumUp (n - 1)

-- >>> sumUp 10
-- 55

-- Task 2
faculty :: Int -> Int
faculty 1 = 1
faculty n = n * faculty (n - 1)

-- >>> faculty 5
-- 120

-- Task 3
fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

-- fib 5 = (  fib 4                                    ) + (fib 3                  )
-- fib 5 = ({ fib 3                 } + {fib 2        }) + ({fib 2        } + fib 1)
-- fib 5 = ({[fib 2        ] + fib 1} + {fib 1 + fib 0}) + ({fib 1 + fib 0} + fib 1)
-- fib 5 = ({[fib 1 + fib 0] + fib 1} + {fib 1 + fib 0}) + ({fib 1 + fib 0} + fib 1)
-- fib 5 = ({[1     + 0    ] + 1    } + {1     + 0    }) + ({1     + 0    } + 1    )
-- fib 5 = ({      1         + 1    } + {1     + 0    }) + ({1     + 0    } + 1    )
-- fib 5 = (            2             +      1         ) + (     1          + 1    )
-- fib 5 =                           3                   +              2
-- fib 5 = 5
-- >>> fib 6
-- 8

-- Task 4
ggt :: Int -> Int -> Int
ggt a b
  | a `mod` b == 0 = b
  | otherwise = ggt a (a `mod` b)

-- >>> ggt 70 42
-- 14

-- Task 5
power :: Int -> Int -> Int
power a b
  | b == 0 = 1
  | otherwise = a * (power a (b - 1))

-- >>> power 2 3
-- 8

-- Task 6
weird :: Int -> Double
weird 0 = 0
weird 1 = 1
weird n = 1 / (fromIntegral n) + weird (n - 1)

-- >>> weird 10
-- 2.9289682539682538
