import Data.List  
  
numUniques :: (Eq a) => [a] -> Int  
numUniques = length . nub  

sumPoly :: (Num a) => [[a]] -> [a]
sumPoly xs = (map sum) $ transpose xs

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let (left, right) = partition (<x) xs
    in (quicksort left) ++ [x] ++ (quicksort right)