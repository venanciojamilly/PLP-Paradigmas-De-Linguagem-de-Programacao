abono :: Int -> Float
abono x
    | x <= 10 && x>= 1 = 100.00
    | x<= 20 = 200.00
    | x <= 30 = 300.00
    | x <= 40 = 400.00
    | otherwise = 500
    