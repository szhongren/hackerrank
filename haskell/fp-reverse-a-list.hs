-- reverses list
rev l = rev' l []

-- tail recursive helper
rev' [] ls = ls
rev' (x : xs) ls = rev' xs (x : ls)

main = do
  print (rev [1 .. 9])
