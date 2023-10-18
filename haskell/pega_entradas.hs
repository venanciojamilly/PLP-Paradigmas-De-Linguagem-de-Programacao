pega_entradas :: Int -> IO()
pega_entradas 0 = putStrLn "parou"
pega_entradas n = do
        putStrLn "Digite uma palavra"
        new_word <- getLine
        --putStrLn new_word
        pega_entradas (n-1)
        putStrLn new_word

main :: IO()
main = do
    putStrLn"Digite uma quantidade de pegas"
    number <- readLn :: IO Int
    pega_entradas number