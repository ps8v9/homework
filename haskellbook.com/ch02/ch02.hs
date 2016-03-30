-- EXAMPLES AND EXERCISES FROM CHAPTER 2

-- p 53
sayHello :: String -> IO ()
sayHello x = putStrLn ("Hello, " ++ x ++ "!")

-- p. 56
-- triple x = x * 3

-- Exercises, p. 59

-- 1.
--    let half x = x / 2
--    let square x = x * x
-- 2.
circumference :: (Fractional a) => a -> a
circumference r = 3.14 * (r ^ 2)

-- Exercises, p. 62
-- Do the parentheses change the results?
-- 1. yes
-- 2. no
-- 3. yes

-- p. 64: see learn.hs

-- p. 65
foo x =
    let y = x * 2
        z = x ^ 2
    in 2 * y * z

-- Exercises, p. 69
-- 1. let area x = 3.14 * (x * x) -- deleted space in 3. 14
-- 2. let double x = x * 2        -- replaced b with x 
-- 3. x = 7                       -- left-aligned y
--    y = 10
--    f = x + y

-- p. 78: See FunctionWithWhere.hs and FunctionWithLet.hs

-- p. 80
mult1      = x * y
   where x = 5
         y = 6

-- Exercises, p. 82

-- 1. let x = 3; y = 1000 in x * 3 + y
f_82_1 = x * 3 + y
   where x = 3
         y = 1000

-- 2. let y = 10; x = 10 * 5 + y in x * 5
f_82_2 = x * 5
   where y = 10
         x = 10 * 5 + y

--3. let x = 7; y = negate x; z = y * 10 in z / x + y
f_82_3 = z / x + y
   where x = 7
         y = negate x
         z = y * 10

-- Chapter Exercises, pp. 82-87

-- Parenthesization
-- 1. 2 + 2 * 3 - 1
--    2 + (2 * 3) - 1
--    (2 + (2 *3)) - 1
--    7
-- 2. (^) 10 $ 1 + 1
--    (^) 10 $ (1 + 1)
--    (^) 10 (1 + 1)
--    (^) 10 2
--    100
-- 3. 2 ^ 2 * 4 ^ 5 + 1
--    (2 ^ 2) * (4 ^ 5) + 1
--    ((2 ^ 2) * (4 ^ 5)) + 1
--    (4 * 1024) + 1
--    4096 + 1
--    4097

-- Equivalent expressions
-- 1. 1 + 1
--    2
--    Equivalent
-- 2. 10 ^ 2
--    10 + 9 * 10
--    Equivalent
-- 3. 400 - 37
--    (-) 37 400
--    Non-equivalent
-- 4. 100 `div` 3
--    100 / 3
--    Non-equivalent
-- 5. 2 * 5 + 10
--    2 * (5 + 10)
--    Non-equivalent

-- More fun with functions
--
-- Rewrite the following code such that it could be evaluated in the REPL.
-- z = 7
-- x = y ^ 2
-- waxOn = x * 5
-- y =  z + 8
--
-- Solution:
-- let z = 7
-- let y = z + 8
-- let x = y ^ 2
-- waxOn = x * 5
--
-- 1. Now what will happen if you enter:
--    10 + waxOn
--    (+10) waxOn
--    (-) waxOn 15
--    Answers: 1135, 1135, 1110
-- 2. While your REPL has waxOn in session, reenter the triple function at the prompt:
--    let triple x = x * 3
-- 3. Now what will happen if we enter this at the prompt:
--    triple waxOn
--    Answer: 3375
-- 4. Rewrite waxOn as a function with a where clause in your source file.
--    Load it into your REPL and make sure it still works as expected.
waxOn = x * 5
  where x = y ^ 2
        y = z + 8
        z = 7
-- 5. Now add the triple function in the source file. Test it in the REPL using triple waxOn.
triple x = x * 3
-- 6. Now add a new function waxOff that looks like this:
waxOff x = triple x
-- 7. Load the source file into your REPL and enter waxOff waxOn at the prompt.
--    What is the result of waxOff 10 or waxOff (-50)?
--    Try modifying the waxOff function to do something new.
waxOff' x = (x * 3) ^ 2
waxOff'' x = x * 3 / 10
