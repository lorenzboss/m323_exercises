-- 1
-- Schreiben Sie eine Funktion, die zwei ganze Zahlen als Parameter erhält und True zurückgibt, falls die beiden Werte gleich sind, sonst soll False zurückgegeben werden.
isEquals :: Int -> Int -> Bool
isEquals x y = x == y

-- >>> isEquals 3 5
-- False
-- >>> isEquals 6 6
-- True

-- 2
-- Schreiben Sie eine Funktion, die drei ganze Zahlen als Parameter erhält und True zurückgibt, falls alle Werte gleich sind, sonst soll False zurückgegeben werden. Der AND-Operator heisst auch hier &&
