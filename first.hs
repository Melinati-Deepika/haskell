import Data.List
import System.IO

maxInt :: Int
maxInt = maxBound :: Int

minInt :: Int
minInt = minBound :: Int

main :: IO ()
main = do
    putStrLn $ "Max Int: " ++ show maxInt
    putStrLn $ "Min Int: " ++ show minInt

