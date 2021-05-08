-- Evaluate e ** x for given values of x by using the taylor series
factorial 1 = 1
factorial n = n * factorial (n - 1)

taylorSeries _ 0 = 0
taylorSeries _ 1 = 1
taylorSeries x n =
  let n' = n - 1
   in ((x ** n') / factorial n') + taylorSeries x n'

eX n = taylorSeries n 10

main = do
  print (fmap factorial [1 .. 10])
  print (fmap (/ factorial 10) ((**) <$> [1 .. 10] <*> [1 .. 10]))
  print (fmap (taylorSeries 1) [0 .. 10])
  mapM_ (print . eX) [20.0, 5.0, 0.5, -0.5]
