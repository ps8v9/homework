-- EXAMPLES AND EXERCISES FROM CHAPTER 2

-- p 53
sayHello :: String -> IO ()
sayHello x = putStrLn ("Hello, " ++ x ++ "!")

-- p. 56
triple x = x * 3

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
-- TO BE CONTINUED ...
