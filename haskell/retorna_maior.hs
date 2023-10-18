retorna_maior :: Int -> Int -> Int -> Int
retorna_maior a b c
    | a >= b && a >= c = a
    | b >= c  = b
    | otherwise  = c


main :: IO()
main = do
    putStrLn "Olá digite trẽs números "
    n1 <- readLn :: IO Int
    n2 <- readLn :: IO Int
    n3 <- readLn :: IO Int
    let result = show(retorna_maior n1 n2 n3)
    putStrLn result