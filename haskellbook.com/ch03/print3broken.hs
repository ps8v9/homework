-- print3broken.hs: example module from p. 101
module Print3Broken where

printSecond :: IO ()
printSecond = do
  putStrLn greeting

main :: IO ()
main = do
  putStrLn greeting
  printSecond
--  where greeting = "Yarrrrr"

greeting :: String
greeting = "Yarrrrr"
