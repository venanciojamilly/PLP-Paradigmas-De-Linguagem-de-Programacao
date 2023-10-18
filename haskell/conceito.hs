conceito :: Float -> Char
conceito x 
    | x >= 9 = 'A'
    | x >= 7.5 = 'B'
    | x >= 6.0 = 'C'
    | x >= 4.0 = 'D'
    |otherwise = 'E'

main :: IO()
main = do
    putStrLn "Digite sua nota"
    nota <- readLn:: IO Float
    let result = show(conceito nota)
    putStrLn result
