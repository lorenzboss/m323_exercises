-- Problem 1
myLast :: [x] -> x
myLast [x] = x
myLast (x : xs) = last xs

myLast2 :: [x] -> x
myLast2 [] = error "empty list"
myLast2 [x] = x
myLast2 (x : xs) = myLast2 xs

-- >>> myLast [1,2,3]
-- 3
-- >>> myLast2 [1,2,3,4,5]
-- 5

-- Problem 3
elementAt :: [x] -> Int -> x
elementAt list a = list !! (a - 1)

-- >>> elementAt [32,345,3,5,2] 3
-- 3

-- Problem 4
myLength :: [x] -> Int
myLength [] = 0
myLength (x : xs) = length xs + 1

-- >>> myLength [1,2,3,4,5,6,7,8,9]
-- 9
-- >>> myLength "How are you?"
-- 12
-- >>> myLength []
-- 0

-- Problem 14
dupli :: [x] -> [x]
dupli [] = []
dupli (x : xs) = x : x : dupli xs

-- >>> dupli [1,2,3,4]
-- [1,1,2,2,3,3,4,4]
