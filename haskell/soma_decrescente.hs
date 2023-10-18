triplo :: Int -> Int
triplo 0 = 0
triplo x = triplo(x-1) + x*3 

main :: IO()
main = do
    putStrLn "Digite sua entrada"
    idUsuario <- readLn :: IO Int
    let result = triplo idUsuario
    putStrLn $ show (result)