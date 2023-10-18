add_space :: Int -> String
add_space 0 = ""
add_space n = " " ++ add_space (n-1)

paraDireita :: String -> Int -> String
paraDireita name n = name ++ add_space (n-1)

reverse_ :: [Int] -> [Int]
reverse_ [] = []
reverse_ (h:t) = reverse_ (t ++ [h])