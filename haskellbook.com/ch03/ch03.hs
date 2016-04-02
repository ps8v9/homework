-- p. 93: see print1.hs
-- p. 94: see print2.hs
-- p. 95: see print3.hs
-- p. 96: see globalLocal.hs

-- Exercises, pp. 96-97
-- 1. Is y in scope for z?
--    Prelude> let x = 5
--    Prelude> let y = 7
--    Prelude> let z = x * y
--    Answer: yes
-- 2. Is h in scope for function g?
--    Prelude> let f = 3
--    Prelude> let g = 6 * f + h
--    Answer: no
-- 3. In the following source file code, is everything needed to execute area in scope?
--    area d = pi * (r * r)
--    r = d / 2
--    Answer: no
-- 4. In the following source file code, are r and d in scope for area?
area d = pi * (r * r)
  where r = d / 2

-- Exercises, p. 99:
-- Will the following compile? If not, fix them.
-- 1. ++  [1,2,3] [4,5,6]
--    Answer: won't compile
--    Fixed: (++) [1,2,3] [4,5,6]
--    Or:    [1,2,3] ++ [4,5,6]
-- 2. '<3' ++ ' Haskell'
--    Answer: won't compile
--    Fixed: "<3" ++ " Haskell"
-- 3. concat ["<3", " Haskell"]
--    Answer: will compile

-- p. 100: see print3flipped.hs
-- p. 101: see print3broken.hs

-- Chapter exercises, pp. 103-106
-- Reading syntax
-- 1. Correct the following as needed.
--    a) concat [[1,2,3], [4,5,6]]
--    b) ++ [1,2,3] [4,5,6]
--       Fixed: (++) [1,2,3] [4,5,6]
--    c) (++) "hello" " world"
--    d) ["hello" ++ " world]
--       Fixed: ["hello" ++ " world"]
--    e) 4 !! "hello"
--       Fixed: "hello" !! 4
--    f) (!!) "hello" 4
--    g) take "4 lovely"
--       Fixed: take 4 "lovely"
--    h) take 3 "awesome"
-- 2. Match the result to the code that produces it.
--    a) concat [[1*6],[2*6],[3*6]]
--       produces: d) [6,12,18]
--    b) "rain" ++ drop 2 "elbow"
--       produces: c) "rainbow"
--    c) 10 * head [1,2,3]
--       produces: e) 10
--    d) (take 3 "Julie") ++ (tail "yes")
--       produces: a) "Jules"
--    e) concat [tail [1,2,3], tail [4,5,6], tail [7,8,9]]
--       produces: ) [2,3,5,6,8,9]
-- Building functions
-- 1. Write expressions to perform the following transformations.
--    a) -- Given "Curry is awesome", return "Curry is awesome!"
--       Answer: "Curry is awesome" ++ "!"
--    b) -- Given "Curry is awesome!", return "y"
--       Answer: drop 4 (take 5 "Curry is awesome")
--    c) -- Given "Curry is awesome!", return "awesome!"
--       Answer: drop 9 "Curry is awesome!"
-- 2. Rewrite the above in a source file as a general function.
exclaim :: String -> String
exclaim s = s ++ "!"
fifthCharAsString :: String -> String
fifthCharAsString s = drop 4 (take 5 s)
drop9 :: String -> String
drop9 s = drop 9 s
-- 3. Complete the function thirdLetter, of type String -> Char, starting with:
--    thirdLetter ::
--    thirdLetter x =
thirdLetter :: String -> Char
thirdLetter x = x !! 2
-- 4. Now change the function so the string is always the same, and the variable is index + 1.
--    Start with:
--      letterIndex :: Int -> Char
--      letterIndex x =
letterIndex :: Int -> Char
letterIndex x = "Curry is awesome!" !! (x - 1)
-- 5. Using the take and drop functions, write a function called rvrs, which will reverse the
--    order of the words in "Curry is awesome".
rvrs :: String
rvrs = word3 ++ " " ++ word2 ++ " " ++ word1
  where s     = "Curry is awesome"
        word1 = take 5 s
        word2 = take 2 (drop 6 s)
        word3 = drop 9 s
-- 6. Expand the preceding function into a module.
--    Answer: see reverse.hs

