lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal!"

sayMe :: (Integral a) => a -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "Four!"
sayMe 5 = "Five!"
sayMe x = "Not between 1 and 5"

factorial' :: (Integral a) => a -> a
factorial' 0 = 1
factorial' n = n * factorial' (n - 1)

charName :: Char -> String
charName 'a' = "Albert"
charName 'b' = "Broseph"
charName 'c' = "Cecil"

--addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
--addVectors a b = (fst a + fst b, snd a + snd b)

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

first :: (a, b, c) -> a
first (x, _, _) = x

second :: (a, b, c) -> b
second (_, y, _) = y

third :: (a, b, c) -> c
third (_, _, z) = z

--head' :: [a] -> a
--head' [] = error "Can't call head on an empty list."
--head' (x:_) = x

tell :: (Show a) => [a] -> String
tell [] = "The list is empty"
tell (x:[]) = "The list has one element: " ++ show x
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "The list is long. The first two elements are: " ++ show x ++ " and " ++ show y

length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

capital :: String -> String
capital "" = "Empty string, whoops!"
capital all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]

--bmiTell :: (RealFloat a) => a -> a -> String
--bmiTell weight height
--    | weight / height ^ 2 <= 18.5 = "underweight"
--    | weight / height ^ 2 <= 25.0 = "normal"
--    | weight / height ^ 2 <= 30.0 = "overweight"
--    | otherwise                   = "obese"

--bmiTell :: (RealFloat a) => a -> String
--bmiTell bmi
--    | bmi <= 18.5 = "underweight"
--    | bmi <= 25.0 = "normal"
--    | bmi <= 30.0 = "overweight"
--    | otherwise   = "obese"

max' :: (Ord a) => a -> a -> a
max' a b
    | a > b     = a
    | otherwise = b

myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b
    | a > b      = GT
    | a == b     = EQ
    | otherwise  = LT

--bmiTell :: (RealFloat a) => a -> a -> String
--bmiTell weight height
--    | bmi <= 18.5 = "underweight"
--    | bmi <= 25.0 = "normal"
--    | bmi <= 30.0 = "overweight"
--    | otherwise   = "obese"
--    where bmi = weight / height ^ 2

--bmiTell :: (RealFloat a) => a -> a -> String
--bmiTell weight height
--    | bmi <= skinny = "underweight"
--    | bmi <= normal = "normal"
--    | bmi <= fat    = "overweight"
--    | otherwise     = "obese"
--    where bmi = weight / height ^ 2
--          skinny = 18.5
--          normal = 25.0
--          fat = 30.0

bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
    | bmi <= skinny = "underweight"
    | bmi <= normal = "normal"
    | bmi <= fat    = "overweight"
    | otherwise     = "obese"
    where bmi = weight / height ^ 2
          (skinny,normal,fat) = (18.5,25.0,30.0)

--initials :: String -> String -> String
--initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
--    where (f:_) = firstname
--          (l:_) = lastname

initials :: String -> String -> String
initials (f:_) (l:_) = [f] ++ ". " ++ [l] ++ "."

--calcBmis :: (RealFloat a) => [(a, a)] -> [a]
--calcBmis xs = [bmi w h | (w, h) <- xs]
--    where bmi weight height = weight / height ^2

cylinder :: (RealFloat a) => a -> a -> a
cylinder r h =
    let sideArea = 2 * pi * r * h
        topArea = pi * r ^ 2
    in  sideArea + 2 * topArea

--calcBmis :: (RealFloat a) => [(a, a)] -> [a]
--calcBmis xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2]

calcBmis :: (RealFloat a) => [(a, a)] -> [a]
calcBmis xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2, bmi >= 25.0]

head' :: [a] -> a
head' xs = case xs of [] -> error "No head for empty lists!"
                      (x:_) -> x

--describeList :: [a] -> String
--describeList xs = "The list is " ++ case xs of [] -> "empty."
--                                               [x] -> "a singleton list."
--                                               xs -> "a longer list."

describeList :: [a] -> String
describeList xs = "The list is " ++ what xs
    where what [] = "empty."
          what [x] = "a singleton list."
          what xs = "a longer list."
