dobrar_lista :: [Int] -> [Int]
dobrar_lista l = [x*2 |x <- l,x > 0]


        
quicksort :: [Int] -> [Int]
quicksort [] = []
quicksort (h:t) = 
    let menores = quicksort[x | x <- t, x <= h]
        maiores = quicksort[x | x <- t, x > h]
    in 
        menores ++ [h] ++ maiores
main :: IO()
main = do
    putStrLn "Digite sua entrada"
    list_string <- getLine
    let list_int = (map read (words list_string)) :: [Int]
    let ordena_list = quicksort list_int
    putStrLn $ show(ordena_list)
   -- putStrLn("Numeros impares em ordem crescente: \n" ++ show(eh_list_impares ordena_list) ++ "\n" ++ "Numeros pares em ordem decrescente: \n" ++ show(eh_list_pares ordena_list))