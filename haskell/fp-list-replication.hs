-- takes a number, and a list of numbers, and returns a list of numbers with each number repeated that many times
f :: Int -> [Int] -> [Int]
f n arr = foldl (++) [] (fmap (\x -> replicate n x) arr)

main = do
  print (f 5 [2, 4, 5])
