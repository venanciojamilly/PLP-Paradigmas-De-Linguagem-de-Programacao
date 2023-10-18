main :: IO ()
main = do
    input1 <- getLine
    input2 <- getLine
    let roupas1 = words input1
    let roupas2 = words input2
        combinacoes = combinacoesPossiveis roupas1 roupas2
    mapM_ putStrLn combinacoes

combinacoesPossiveis :: [String] -> [String] -> [String]
combinacoesPossiveis [] _ = []
combinacoesPossiveis (x:xs) ys = map (\y -> x ++ " " ++ y) ys ++ combinacoesPossiveis xs ys

