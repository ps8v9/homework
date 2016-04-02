-- reverse.hs: Module for answer to chapter exercise 6 on p. 105.
module Reverse where

rvrs :: String -> String
rvrs x = word3 ++ " " ++ word2 ++ " " ++ word1
  where word1 = take 5 x
        word2 = drop 6 (take 8 x)
        word3 = drop 9 x

main :: IO ()
main = do
  print (rvrs "Curry is awesome")
  print $ rvrs "Curry is awesome"
