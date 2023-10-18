soma_dobro :: Int -> Int
soma_dobro 1 = 2
soma_dobro x = soma_dobro(x - 1)*2 + 2

main :: IO()
main = do
    putStrLn "Digite sua entrada"
    idUsuario <- readLn :: IO Int
    let result = soma_dobro idUsuario
    putStrLn $ show (result)