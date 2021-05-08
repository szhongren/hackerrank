-- filters list removing odd positioned items
f lst = sum [x | x <- lst, x `mod` 2 /= 0]

main = do
  print (f [3, 2, 4, 6, 5, 7, 8, 0, 1])
