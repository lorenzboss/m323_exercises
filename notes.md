# higher-order function
Eine Funktion ist eine Higher-Order-Funktion, wenn sie:

Funktionen als Argumente annimmt.
Eine Funktion als Rückgabewert zurückgibt.

```haskell
anwendenZweimal :: (Int -> Int) -> Int -> Int
anwendenZweimal funktion zahl = funktion (funktion zahl)
```

# Prepend and Append
Prepend (:) - Fügt Element an Anfang einer Liste
Vorteile: Effizienz (schnell, nur Verweis auf erste Element hinzugefügt), Unendliche Listen (geht, da nur den Kopf der Liste benötigt)
Nachteile: Fügt an den Anfang, nicht natürliche Gebrauch für  Benutzer

Append (++) - Fügt eine Liste ans Ende einer anderen Liste
Vorteile: Intuitiver 
Nachteile: Ineffizienz (Muss gesamte Liste ändern, um das Element ans Ende zu setzen), Nicht geeignet für unendliche Listen (Funktioniert nicht, Ende kann nicht erreicht werden)

# List Pattern Matching
[] Leere Liste
(x:xs) x ist das erste Element der Liste, xs ist der Rest der Liste
(x:y:ys) x ist das erste Element, y das zweite Element und ys der Rest der Liste
(x:[]) Liste mit nur einem Element
_ Platzhalter für ein Element, das nicht benötigt wird

# Syntax Map, Filter, zipWith
func1 = map      (\x -> x*2)             [1,2,3,4,5]        -- [2,4,6,8,10]
func2 = filter   (\x -> x `mod` 2 == 0)  [1,2,3,4,5]        -- [2,4]
func3 = zipWith  (\x y -> min x y)       [1,2,3] [4,5,6]    -- [1,2,3]
func4 = foldl    (\acc x -> acc + x)     0 [1,2,3,4,5]      -- 15
func5 = foldr    (\x acc -> acc + x)     0 [1,2,3,4,5]      -- 15