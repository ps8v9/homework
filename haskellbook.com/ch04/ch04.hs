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

