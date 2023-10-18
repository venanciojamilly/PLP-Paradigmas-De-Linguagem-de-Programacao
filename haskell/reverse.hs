reverse_ :: [Int] -> [Int]
reverse_ [] = []
reverse_ [t] = [t]
reverse_ (h:t) = reverse_ t ++ [h]

rep :: Int-> t ->[t]
rep 0 ch = []
rep n ch = ch : rep (n-1) ch