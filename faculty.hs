-- Recursive factorial
fac :: Integer -> Integer
fac n =
    if n <= 1 then
        1
    else
        n * fac (n - 1)

-- Using guards
fac2 :: Integer -> Integer
fac2 n
    | n <= 1    = 1
    | otherwise = n * fac2 (n - 1)

-- Pattern matching example
is_zero :: Integer -> Bool
is_zero 0 = True
is_zero _ = False

-- Tail-recursive factorial with accumulator
fac3 :: Integer -> Integer
fac3 n = aux n 1
    where
        aux n acc
            | n <= 1    = acc
            | otherwise = aux (n - 1) (n * acc)
main :: IO ()
main = do
    print (fac 5)   
    print (fac2 5) 
    print (fac3 5)  
    print (is_zero 0)  
    print (is_zero 7)  
