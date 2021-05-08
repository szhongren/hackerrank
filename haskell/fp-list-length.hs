-- gets the length of a list
len ls = len' ls 0

-- tail recursive helper
len' [] l = l
len' (x : xs) l = len' xs (l + 1)
