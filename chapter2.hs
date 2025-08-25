import Data.List (sortBy)

-- HC2T2 functions
add :: Int -> Int -> Int
add x y = x + y

isEven :: Int -> Bool
isEven n = n `mod` 2 == 0

concatStrings :: String -> String -> String
concatStrings a b = a ++ b

-- HC2T3 variables
myAge :: Int
myAge = 25

piValue :: Double
piValue = 3.14159

greeting :: String
greeting = "Hello, Haskell!"

isHaskellFun :: Bool
isHaskellFun = True

-- HC2T4 prefix/infix
prefix1 = (+) 5 3
prefix2 = (*) 10 4
prefix3 = (&&) True False

infix1 = 7 + 2
infix2 = 6 * 5
infix3 = True && False

-- HC2T5 functions
circleArea :: Float -> Float
circleArea r = pi * r * r

maxOfThree :: Int -> Int -> Int -> Int
maxOfThree x y z = max x (max y z)

-- HC2T6 types
smallNumber :: Int
smallNumber = 262

bigNumber :: Integer
bigNumber = 2127

-- HC2T7 booleans
bool1 = True && True
bool2 = False || False
bool3 = not False
bool4 = 10 > 20

-- Main
main :: IO ()
main = do
    putStrLn "-- HC2T1: Types (manual check in GHCi recommended)"
    print (42 :: Integer)
    print (3.14 :: Double)
    print "Haskell"
    print 'Z'
    print (True && False)

    putStrLn "\n-- HC2T2: Functions"
    print $ add 10 5
    print $ isEven 4
    print $ concatStrings "Hello, " "world!"

    putStrLn "\n-- HC2T3: Immutable Variables"
    print myAge
    print piValue
    print greeting
    print isHaskellFun

    putStrLn "\n-- HC2T4: Infix/Prefix Notation"
    print prefix1
    print prefix2
    print prefix3
    print infix1
    print infix2
    print infix3

    putStrLn "\n-- HC2T5: Custom Functions"
    print $ circleArea 5.0
    print $ maxOfThree 3 9 7

    putStrLn "\n-- HC2T6: Int vs Integer"
    print smallNumber
    print bigNumber
    -- print (2^64 :: Int) -- Uncommenting may cause overflow

    putStrLn "\n-- HC2T7: Boolean Expressions"
    print bool1
    print bool2
    print bool3
    print bool4
