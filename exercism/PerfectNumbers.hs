module PerfectNumbers (classify, Classification(..)) where

data Classification = Deficient | Perfect | Abundant deriving (Eq, Show)

classify :: Int -> Maybe Classification
classify x  
    | x <= 0 = Nothing 
    | x < divSum x = Just Abundant
    | x > divSum x = Just Deficient
    | otherwise = Just Perfect

divSum :: Int -> Int
divSum n = let divisors = [x | x <- [1..(n-1)], n `rem` x == 0]
            in sum divisors

