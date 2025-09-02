in_range :: Integer -> Integer -> Integer -> Bool
in_range min max x = x >= min && x <= max

in_range2 :: Integer -> Integer -> Integer -> Bool
in_range2 min max x = 
    let in_lower_bound = min <= x
        in_upper_bound = max >= x
    in
    in_lower_bound && in_upper_bound

in_range3 :: Integer -> Integer -> Integer -> Bool
in_range3 min max x = ilb && iub
    where
        ilb = min <= x
        iub = max >= x

in_range4 :: Integer -> Integer -> Integer -> Bool
in_range4 min max x = 
    if ilb then iub else False
    where
        ilb = min <= x
        iub = max >= x
        
main :: IO ()
main = do
    print (in_range 1 10 5)   
    print (in_range2 1 10 15)  
    print (in_range3 1 10 7)  
    print (in_range4 1 10 0)   

