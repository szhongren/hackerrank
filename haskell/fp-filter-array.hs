-- filters array to only have numbers smaller than the given
f :: Int -> [Int] -> [Int]
f n arr = [x | x <- arr, x < n]

main = do
  print (f 4 [1 .. 9])
