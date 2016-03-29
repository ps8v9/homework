-- FunctionWithLet.hs
-- Example module from p. 78
module FunctionWithLet where

printInc2 n = let plusTwo = n + 2
              in print plusTwo

-- p. 79
printInc2' n =
  (\plusTwo -> print plusTwo) (n + 2)
