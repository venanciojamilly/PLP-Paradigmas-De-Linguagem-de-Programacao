{-- Maria está planejando sair com suas amigas no fim de semana, mas está indecisa sobre seu traje. 

Auxilie Maria ao exibir todas as potenciais combinações de roupas que ela pode usar, desenvolvendo um programa para isso. 
O programa receberá dois conjuntos de roupas como entrada e produzirá todas as combinações viáveis a partir desses conjuntos. --}


combinar_roupas :: [String] -> [String] -> [String]
combinar_roupas [] _ = []
combinar_roupas (h:t) roupas2 = map(\y -> h ++ " junto " ++ y) roupas2 ++ combinar_roupas t roupas2 


main :: IO()
main = do
    putStrLn "Digite a primeira combinação de roupas:"
    roupas1 <- getLine
    putStrLn "Digite a segunda combinacao de roupas:"
    roupas2 <- getLine
    let r1 = words roupas1
    let r2 = words roupas2
    mapM_ putStrLn $ combinar_roupas r1 r2
