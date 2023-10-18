{-- Paulo foi em uma padaria e quer saber o valor da sua conta. 
Para ajudá-lo, faça um programa que receba a quantidade de itens consumidos, 
uma descrição dos itens e retorna o valor da conta.

Cardápio:

cafe            R$ 4
pao             R$ 2
suco            R$ 5
pao de queijo   R$ 5
sanduiche       R$ 3
--}

calcula_soma :: String -> Int
calcula_soma lanche 
    |lanche == "cafe" = 4
    |lanche == "pao" = 2
    |lanche == "suco" = 5
    |lanche == "pao de queijo" = 5
    |lanche == "sanduiche" = 3
    |otherwise = 0

pega_lanche :: Int -> Int -> IO()
pega_lanche 0 soma = print soma
pega_lanche n soma = do
    lanche <- getLine
    let price = soma + (calcula_soma lanche)
    pega_lanche (n-1) price



main :: IO()
main = do
    quant <- readLn :: IO Int
    pega_lanche quant 0
    
