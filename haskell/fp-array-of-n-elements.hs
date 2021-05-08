-- creates array of n elements
fn 0 = []
fn n = (n : fn (n - 1))

main = do
  print (fn 14)
