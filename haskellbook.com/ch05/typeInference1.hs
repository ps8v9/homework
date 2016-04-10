-- typeInference1.hs: example module from p. 159
module TypeInference1 where

f :: Num a => a -> a -> a
f x y = x + y + 3

