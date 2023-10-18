

-- Função que calcula o dobro de um número
dobro :: Int -> Int
dobro x = 2 * x

imprime_dobro :: [Int] -> [Int]
imprime_dobro [] = []
imprime_dobro l = [dobro x | x <- l ]
main :: IO ()
main = do
    putStr "Digite um número: "
   -- hFlush stdout  -- Certifique-se de que a saída seja exibida antes de ler a entrada
  --  input <- getLine
    --let numero = read input :: Int
    let resultado = imprime_dobro [1,4,6,8,9,10,3,5]
    putStrLn $ "O dobro de " ++ show resultado ++ " é " ++ show resultado
