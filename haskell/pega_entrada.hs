main :: IO()
main = do
    out <- readLn :: IO Int
    if out /= -1 then do
        main
        putStrLn $ show(out)
    else
        putStrLn "Invertidos:"

repete :: Int -> String -> String
repete 1 word = word
repete x word = repete(x - 1) word ++ word ++ "\n"
