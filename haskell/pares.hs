pares :: Int -> Int -> Int -> Int -> [(Int,Int)]
pares a b c d = [(x,y)| x <- [a,b,c,d], y <- [c,d,a,b]]

len :: [t] -> String
len [] = "terminou"
len (h:tail) = "." ++ len tail

reverse_ :: [Int] -> [Int]
reverse_ [] = []
reverse_ [t] = [t]
reverse_ (h:t) = reverse_ t ++ [h]

quicksort :: [Int] -> [Int]
quicksort [] = []
quicksort [t] = [t]
quicksort (h:t) = 
    let menores = quicksort[x | x <- t, x <= h]
        maiores = quicksort[x | x <- t, x > h]
    in 
        menores ++ [h] ++ maiores