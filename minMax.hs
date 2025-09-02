minMax :: (Ord a) => [a] -> Maybe (a, a)
minMax (h: t) = Just (foldr (\x (min, max) -> (if x < min then x else min, if x > max then x else max)) (h, h) t)
minMax _ = Nothing

main :: IO ()
main = do
print $ minMax  [3,1,4,1,5,9,2]
