-- FunctionWithWhere.hs
-- Example module from p. 78
module FunctionWithWhere where

printInc n = print plusTwo
  where plusTwo = n + 2

