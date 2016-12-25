oddities :: Int -> IO()
oddities x
  | even x = putStrLn $ show x ++ " is even"
  | otherwise = putStrLn $ show x ++ " is odd"

run :: Int -> IO()
run 0 = putStr ""
run n = do
  a <- getLine
  oddities $ read a 
  run $ n - 1

main :: IO()
main = do
  a <- getLine
  run $ read a
