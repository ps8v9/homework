-- Exercises, p. 110
-- Given the following datatype, answer the following questions:
data Mood = Blah | Woot deriving Show
-- 1. What is the type constructor, or name of this type?i
--    Mood
-- 2. If the function requires a Mood value, what values can you use there?
--    Blah or Woot
-- 3. What's wrong with this type signature? changeMood :: Mood -> Woot
--    Wood should be the name of a datatype.
-- 4. Write the function to change moods. Start with the following; correct as needed.
--    changeMood Mood = Woot
--    changeMood _ = Blah
changeMood :: Mood -> Mood
changeMood Blah = Woot
changeMood    _ = Blah
-- 5. Load and run the above in GHCi.

-- Exercises, p. 121
-- Do the following compile? If not, fix them.
-- 1. not True && True
--    Compiles
-- 2. not (x = 6)
--    Fixed: not (x == 6)
-- 3. (1 * 2) > 5
--    Compiles
-- 4. [Merry] > [Happy]
--    Fixed: "Merry" > "Happy"
-- 5. [1,2,3] ++ "look at me!"
--    Fixed: "123" ++ "look at me!"

-- p. 123: see greetIfCool1.hs and greetIfCool2.hs

-- Chapter exercises, pp. 126-129
awesome = ["Papuchon", "curry", ":"]
alsoAwesome = ["Quake", "The Simons"]
allAwesome = [awesome, alsoAwesome]
-- length is a function that takes a list and returns how many items are in the list
-- 1. Given the definition of length above, what would the type signature be?
--    How many arguments, of what type does it take? What type is the result?
--    Answer: length :: (Integer b) => [a] -> b?
--            Takes 1 argument of type list, returns an integer?
--    Nope, it's: length :: Foldable t => t a -> Int
-- 2. What are the results of the following expressions?
--    a) length [1, 2, 3, 4, 5] yields 5
--    b) length [(1,2), (2,3), (3,4)]  yields 3
--    c) length allAwesome yields 2
--    c) length (concat allAwesome) yields 5
-- 3. Which of the following expressions returns an error, and why?
--    Prelude> 6 / 3
--    Prelude> 6 / length [1, 2, 3]
--    Answer: The second expression.
-- 4. How can you fix the error using a different division function/operator?
--    Answer: Change it to: 6 `quot` length [1,2,3]
-- 5. What is the type of the expression 2 + 3 == 5? What would we expect as a result?
--    Answer: Bool; result is True
-- 6. What is the type and expected result of:
--    Prelude> let x = 5
--    Prelude> x + 3 == 5
--    Answer: Bool; result is False
-- 7. Which bits of code below will work? Why or why not? If they work, what is the result?
--    Prelude> length allAwesome == 2             -- works; yields True
--    Prelude> length [1, 'a', 3, 'b']            -- error; lists must be of a single type
--    Prelude> length allAwesome + length awesome -- works; yields 5 
--    Prelude> (8 == 8) && ('b' < 'a')            -- works; yields False
--    Prelude> (8 == 8) && 9                      -- error; && takes 2 Bools
-- 8. Complete the definition of isPalindrome below. Use the reverse function (which is predefined).
--    reverse :: [a] -> [a]
isPalindrome :: (Eq a) => [a] -> Bool
--isPalindrome x = undefined
isPalindrome x = reverse x == x
-- 9. Write a function to return the absolute value of a number using if-then-else
myAbs :: Integer -> Integer
-- myAbs = undefined
myAbs x = if (x >= 0) then x else (-x)
-- 10. Fill in the definition of the following function, using fst and snd.
f :: (a, b) -> (c, d) -> ((b, d), (a, c))
-- f = undefined
f (x1, y1) (x2, y2) = ((y1, y2), (x1, x2))

-- p. 128: Reading syntax
-- Correct the examples below as needed.

-- 1. Function that returns 1 plus the length of a string argument
--    x = (+)
--    F xs = w 'x' 1
--          where w = length xs
x = (+)
f2 xs = w `x` 1
      where w = length xs

-- 2. The identity function, id.
--    \ X = x
--    Fixed: (\x -> x)
--    Usage example: (\x -> x) 3 yields 3
--    Or in a source file:
id' :: a -> a
id' x = x

-- 3. Function that will return the first value from a list.
--    \x : xs -> x
--    Fixed: (\ (x:xs) -> x)
--    Usage example: (\x (x:xs) -> x) [1,2,3]
--    Or in a source file:
head' :: [a] -> a
head' (x:_) = x

-- 4. Function that returns 1 from the value (1,2)
--    f (a b) = A
fst' :: (a,b) -> a
fst' (x,y) = x

-- Match the function names to their types.
-- 1. Which of the following is the type of show?
--    a) show a => a -> String
--    b) Show a -> a -> String
--    c) Show a => a -> String
--    Answer: c
-- 2. Which of the following is the type of (==)?
--    a) a -> a -> Bool
--    b) Eq a => a -> a -> Bool
--    c) Eq a -> a -> a -> Bool
--    d) Eq a => A -> Bool
--    Answer: b
-- 3. Which of the following is the type of fst?
--    a) (a, b) -> a
--    b) b -> a
--    c) (a, b) -> b
--    Answer: a
-- 4. Which of the following is the type of (+)?
--    a) Num a -> a -> a -> Bool
--    b) Num a => a -> a -> Bool
--    c) num a -> a -> a -> a
--    d) Num a -> a -> a -> a
--    e) a -> a -> a
--    Answer: d

