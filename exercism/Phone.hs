module Phone (number) where
import Data.Char (isDigit)

number :: String -> Maybe String
number xs = checkFormat (cleanOne((filter isDigit xs)))

cleanOne ::String -> String
cleanOne [] = []
cleanOne (x:xs) 
    | x == '1' = xs
    | length xs == 10 && x /= '1' = []
    | otherwise = x:xs

checkFormat :: String -> Maybe String
checkFormat [] = Nothing
checkFormat (x:xs)
    | x < '2' = Nothing
    | length xs /= 9 = Nothing
    | xs !! 2 < '2' = Nothing
    | otherwise = Just (x:xs)