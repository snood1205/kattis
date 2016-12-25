pot :: Integral a => Read a => Show a => a -> a
pot a = (^ mod a 10) $ div a 10

run :: Show a => Integral a => Read a => Int -> a -> IO()
run 0 s = print s
run n s = do
  x <- getLine
  run (n-1) $ (+ s) $ pot $ read x

main :: IO()
main = do
  b <- getLine
  run (read b) 0
