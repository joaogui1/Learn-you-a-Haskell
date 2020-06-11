sumThree :: (Num a) => a -> a -> a -> a
sumThree x y z = x + y + z

-- New partial application
let sumAdd5 = sumThree 5

-- Partial infix
divideByTen :: (Floating a) => a -> a  
divideByTen = (/10)  

-- Special case for minus
subtractByTen :: (Floating a) => a -> a
subtractByTen = (subtract 10)

-- Parentheses need to indicate the first param is a function
applyTwice :: (a -> a) -> a -> a  
applyTwice f x = f (f x)  

-- quicksort with filter
quicksort :: (Ord a) => [a] -> [a]    
quicksort [] = []    
quicksort (x:xs) =     
    let smallerSorted = quicksort (filter (<=x) xs)  
        biggerSorted = quicksort (filter (>x) xs)   
    in  smallerSorted ++ [x] ++ biggerSorted  


-- Collatz
chain :: (Integral a) => a -> [a]  
chain 1 = [1]  
chain n  
    | even n =  n:chain (n `div` 2)  
    | odd n  =  n:chain (n*3 + 1)  

-- Collatz Length
numLongChains :: Int  
numLongChains = length (filter isLong (map chain [1..100]))  
    where isLong xs = length xs > 15  


-- lambdas
flip' :: (a -> b -> c) -> b -> a -> c  
flip' f = \x y -> f y x  


--  left fold
sum' :: (Num a) => [a] -> a  
sum' xs = foldl (\acc x -> acc + x) 0 xs  

-- right fold
--  the ++ function is much more expensive than :, so we usually use right folds when we're building up new lists from a list.
map' :: (a -> b) -> [a] -> [b]  
map' f xs = foldr (\x acc -> f x : acc) [] xs  


