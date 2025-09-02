-- Define the function
addBrackets :: String -> String
addBrackets s = "[" ++ s ++ "]"

-- Main function
main :: IO ()
main = do
    let result = map addBrackets ["one", "two", "three"]
    print result
