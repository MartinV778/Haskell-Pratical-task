import Data.List (sortBy)

-- HC1T1
double :: Num a => a -> a
double x = x * 2

increment :: Num a => a -> a
increment x = x + 1

doubleThenIncrement :: Num a => a -> a
doubleThenIncrement = increment . double

-- HC1T2
circleArea :: Floating a => a -> a
circleArea r = pi * r * r

-- HC1T3
greaterThan18 :: (Ord a, Num a) => a -> Bool
greaterThan18 x = x > 18

-- HC1T4
extractPlayers :: [(String, Int)] -> [String]
extractPlayers = map fst

sortByScore :: [(String, Int)] -> [(String, Int)]
sortByScore = reverse . sortBy (\(_, s1) (_, s2) -> compare s1 s2)

topThree :: [(String, Int)] -> [(String, Int)]
topThree = take 3

getTopThreePlayers :: [(String, Int)] -> [String]
getTopThreePlayers = extractPlayers . topThree . sortByScore

-- HC1T5
infiniteNumbers :: [Integer]
infiniteNumbers = [1..]

firstN :: Int -> [Integer]
firstN n = take n infiniteNumbers

-- HC1T6
addNumbers :: Int -> Int -> Int
addNumbers x y = x + y

-- HC1T7
fToC :: Floating a => a -> a
fToC f = (f - 32) * (5/9)

-- HC1T8
applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

-- Main function to demo all tasks
main :: IO ()
main = do
    putStrLn "HC1T1 - doubleThenIncrement 3:"
    print $ doubleThenIncrement 3  -- (3*2)+1 = 7

    putStrLn "\nHC1T2 - circleArea with radius 4:"
    print $ circleArea 4  -- pi * 4^2

    putStrLn "\nHC1T3 - greaterThan18 20:"
    print $ greaterThan18 20  -- True

    putStrLn "\nHC1T4 - getTopThreePlayers from sample data:"
    let players = [("Alice", 30), ("Bob", 45), ("Charlie", 25), ("Diana", 50), ("Eve", 40)]
    print $ getTopThreePlayers players  -- ["Diana", "Bob", "Eve"]

    putStrLn "\nHC1T5 - first 10 infiniteNumbers:"
    print $ firstN 10

    putStrLn "\nHC1T6 - addNumbers 7 8:"
    print $ addNumbers 7 8

    putStrLn "\nHC1T7 - fToC 100:"
    print $ fToC 100  -- 37.7778 approx

    putStrLn "\nHC1T8 - applyTwice (increment) 5:"
    print $ applyTwice increment 5  -- increment(increment(5)) = 7
