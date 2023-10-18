rotate :: [Int] -> Int -> [Int]
rotate [] n = []
rotate l 0 = l
rotate (head:tail) n = rotate (tail ++ [head]) (n-1)

main :: IO()
main = do
    putStrLn "Digite as rotações"
    n <- readLn :: IO Int
    let rotacoes = rotate ([1,2,3,4,5]) n 
    print(rotacoes)