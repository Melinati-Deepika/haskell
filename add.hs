-- Define the function
add :: Num a => a -> a -> a
add a b = a + b

-- Main function to run
main :: IO ()
main = do
    let x = add 10 30           -- normal prefix style
    let y = 10 `add` 30         -- infix style using backticks
    putStrLn ("add 10 30 = " ++ show x)
    putStrLn ("10 `add` 30 = " ++ show y)

