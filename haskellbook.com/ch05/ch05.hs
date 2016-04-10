-- Exercises, p. 143
-- Match the functions to their type signatures.
-- 1. Functions:
--    a) not
--    b) length
--    c) concat
--    d) head
--    e) (<)
-- 2. Type signatures:
--    a) _ :: [a] -> a
--    b) _ :: [[a]] -> [a]
--    c) _ :: Bool -> Bool
--    d) _ :: [a] -> Int
--    e) _ :: Ord a => a -> a -> Bool
--  Answers:
--    not :: Bool -> Bool
--    length :: [a] -> Int (in GHCi 7.10, it's Foldable t => t a -> a)
--    concat :: [[a]] -> [a] (in GHCi 7.10, it's Foldable t => t [a] -> [a])
--    head :: [a] -> a
--    (<) :: Ord a => a -> a -> Bool

-- p. 145
addStuff :: Integer -> Integer -> Integer
addStuff a b = a + b + 5

-- p. 146:
funcIgnoresArgs :: a -> a -> a -> String
funcIgnoresArgs x y z = "Blah"

-- nonsense :: Bool -> Integer
nonsense True = 805
nonsense False = 31337

typicalCurriedFunction :: Integer -> Bool -> Integer
typicalCurriedFunction i b = i + (nonsense b)

anonymous :: Integer -> Bool -> Integer
anonymous = \i b -> i + (nonsense b)

anonymousAndManuallyNested :: Integer -> Bool -> Integer
anonymousAndManuallyNested = \i -> \b -> (i + nonsense b)

-- Exercises, pp. 151-153
-- 1. Q. If the type of f is a -> a -> a -> a, and the type of x is Char, what is the type of f x?
--    A. Char -> Char -> Char
-- 2. Q. If the type of g is a -> b -> c, what is the type of g 0 'c' "woot"?
--    A. Char
-- 3. Q. If the type of h is (Num a, Num b) => a -> b -> b, what is the type of h 1.0 2?
--    A. (Num b) => b
-- 4. Q. If the type of h is (Num a, Num b) -> a -> b -> b, what is the type of h 1 (5.5 :: Double)?
--    A. Double
-- 5. Q. If the type of jackal is (Ord a, Eq b) => a -> b -> a, what it the type of
--       jackal "keyboard" "has the word jackal in it"?
--    A. [Char]
-- 6. Q. If the type of jackal is (Ord a, Eq b) => a -> b -> a, what is the type of jackal "keyboard"?
--    A. Eq b => b -> [Char]
-- 7. Q. If the type of kessel is (Ord a, Num b) => a -> b -> a, what is the type of kessel 1 2?
--    A. (Num a, Ord a) => a
-- 8. Q. If the type of kessel is (Ord a, Num b) => a -> b -> a, what is the type of
--       kessel 1 (2 :: Integer)?
--    A. (Num a, Ord a) => a
-- 9. Q. If the type of kessel is (Ord a, Num b) => a -> b -> a, what is the type of
--       kessel (1 :: Integer) 2?
--    A. Integer

-- Exercises, p. 156
-- 1. Given the type a -> a (which is the type for id), try to write a function that does something
--    other than returning the same value. Impossible, but try anyway.
--    Answer: OK, this doesn't work:
--              f :: a -> a; f x = x + 1
--            But this does:
f :: a -> a; f x = x

-- 2. Write both possible implementations of a -> a -> a
f2 :: a -> a -> a
f2 x _ = x
f2' :: a -> a -> a
f2' _ x = x

-- 3. Implement a -> b -> b.
f3 :: a -> b -> b
f3 _ x = x
--    How many implementations does it have? 1.
--    Does the behavior change when the types of a and b change? No.

-- p. 159: see typeInference1.hs
-- p. 160: see typeInference2.hs

-- Exercises, pp. 160-161
-- 1. -- Type signature of general function
--    (++) :: [a] -> [a] -> [a]
--    -- How might that change when we apply it to the following value?
myConcat x = x ++ "yo"
--    Answer: myConcat :: [Char] -> [Char]
-- 2. -- General function
--    (*) :: Num a => a -> a -> a
--    -- Applied to a value
myMult x = (x / 3) * 5
--    -- Answer: myMult a :: Fractional a => a -> a
-- 3. take :: Int -> [a] -> [a]
myTake x = take x "hey you"
--    Answer: myTake :: Int -> [Char]
-- 4. (>) Ord a => a -> a -> Bool
myCom x = x > (length [1..10])
--    Answer: myCom :: Int -> Bool
-- 5. (<) Ord a => a -> a -> Bool
myAlph x = x < 'z'
--    Answer: myAlph :: Char -> Bool

-- p. 162

-- declaration of triple's type
triple :: Integer -> Integer

-- declaration of the function
triple x = x * 3

triple' x = tripleItYo x
  where tripleItYo :: Integer -> Integer
        tripleItYo y = y * 3

-- Chapter Exercises, pp. 163-170
-- Multiple choice
-- 1. A value of type [a] is              c) a list whose elements are of some type a
-- 2. A function of type [[a]] -> could   a) take a list of strings as an argument
-- 3. A function of type [a] -> Int -> a  b) returns 1 element of type a [rest of answer is bogus]
-- 4. A function of type (a, b) -> a      c) takes a tuple argument [rest of answer is bogus]
-- Determine the type
-- 1. Determine the value returned by these function applications and the type of that value.
--    a) (* 9) 6 returns 54, of type Num a => a
--    b) head [(0,"doge"),(1,"kitteh")] returns (0,"doge"), of type Num t => (t, [Char])
--    c) [head [(0 :: Integer,"doge"),(1,"kitteh")] returns (0,"doge"), of type (Integer,[Char])
--    d) if False then True else False returns False, of type Bool
--    e) length [1,2,3,4,5] returns 5, of type Int
-- 2. Given x = 5; y = x + 5; w = y * 10, what is the type of w? Num a => a
-- 3. Given x = 5; y = x + 5; z y = y * 10, what is the type of z? Num a => a -> a
-- 4. Given x = 5; y = x + 5; f = 4 / y, what is the type of f? Fractional a => a
-- 5. Given x = "Julie"; y = " <3"; z = "Haskell"; f = x ++ Y ++ z, what is the type of f? [Char]
-- Does it compile?
-- Continue chapter exercises on p. 165
