-- prints hello world n times
helloWorld :: Int -> IO ()
helloWorld 0 = return ()
helloWorld n = do
  putStrLn "Hello World"
  helloWorld (n - 1)

main = do
  helloWorld 5
