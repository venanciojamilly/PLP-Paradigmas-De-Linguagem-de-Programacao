-- Função que calcula as raízes de uma equação do segundo grau
quadratica:: Double -> Double -> Double -> (Double, Double)
quadratica a b c
    | discriminante > 0 = (x1, x2)  -- Duas raízes reais
    | discriminante == 0 = (x1, x1) -- Uma raiz real (raízes iguais)
    | otherwise = error "Não há raízes reais" -- Nenhuma raiz real
  where
    discriminante = b*b - 4*a*c
    x1 = (-b + sqrt discriminante) / (2*a)
    x2 = (-b - sqrt discriminante) / (2*a)

main :: IO()
main = do
    putStrLn "Digite sua entrada"
    a <- readLn :: IO Double
    b <- readLn :: IO Double
    c <- readLn :: IO Double
    let result = quadratica a b c 
    putStrLn $ show (result)