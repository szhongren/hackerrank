-- filters list removing odd positioned items
f :: [Int] -> [Int]
f lst = [x | (i, x) <- zip [1 ..] lst, i `mod` 2 == 0]

main = do
  print (f [1, 2, 3, 4, 5])
