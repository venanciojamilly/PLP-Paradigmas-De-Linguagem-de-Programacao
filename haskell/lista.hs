{-Função 'itemN', que recebe um numero inteiro positivo n e uma lista e retorna o n-ésimo
elemento da lista.
Ex.:
*Main> itemN 2 ["primeiro", "segundo", "terceiro"]
"segundo"
-}

itemN :: Int -> [Int] -> Maybe Int
itemN _ [] = Nothing   -- Trata lista vazia
itemN 1 (x:xs) = Just x  -- Retorna o primeiro elemento
itemN number (x:xs)
    | number <= 0 = Nothing  -- Trata número de posição inválido
    | otherwise = itemN (number - 1) xs  -- Caso recursivo

{-Função 'ocorrenciasN', que recebe um elemento e uma lista, e retorna quantas vezes o elemento
ocorre na lista.
Ex.:
*Main> ocorrenciasN 3 [1,2,3,4,5]
1
*Main> ocorrenciasN 0 [0,1,0,2,0,3,0,4,0,5-}

ocorrencia_n :: [Int] -> Int -> Int
ocorrencia_n [] _ = 0
ocorrencia_n (x:xs) number = if (x==number) then 1 + ocorrencia_n xs number
    else 
        ocorrencia_n xs number


verifica_palavras :: [String] -> Int
verifica_palavras palavras = length([p | p <- palavras, terminacoms p])

terminacoms :: [String] -> [String]
terminacoms "" = False
terminacoms word = if termina == "s" then True
    else 
        False
    
    where 
        termina = [word !! (length(word)-1)]
{-- Maria é professora de matemática e gostaria de saber a quantidade de vezes que cada número é sorteado em uma lista
de números aleatórios gerados por um programa de loteria.

Ela deseja que você crie um programa em Haskell que recebe uma lista de números inteiros aleatórios e retorna a
quantidade de vezes que cada número foi sorteado. --}

retorna_frequencia :: Int -> [Int] -> Int
retorna_frequencia _ [] = 0
retorna_frequencia number (h:t)  
    | h == number = 1 + retorna_frequencia number t
    | otherwise = retorna_frequencia number t
