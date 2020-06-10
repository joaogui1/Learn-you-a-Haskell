-- Recursion is important to Haskell because unlike imperative languages, you do computations in Haskell by 
-- declaring what something is instead of declaring how you get it. 

maximum' :: (Ord a) => [a] -> a  
maximum' [] = error "maximum of empty list"  
maximum' [x] = x  
maximum' (x:xs)   
    | x > maxTail = x  
    | otherwise = maxTail  
    where maxTail = maximum' xs  

-- elegant version
el_maximum' :: (Ord a) => [a] -> a  
el_maximum' [] = error "maximum of empty list"  
el_maximum' [x] = x  
el_maximum' (x:xs) = max x (el_maximum' xs)  

-- Num is not a subclass of ord, so we need to specify both it we will compare and do arithmetic
replicate' :: (Num i, Ord i) => i -> a -> [a]  
replicate' n x  
    | n <= 0    = []  
    | otherwise = x:replicate' (n-1) x  

take' :: (Num i, Ord i) => i -> [a] -> [a]  
take' n _  
    | n <= 0   = []  
take' _ []     = []  
take' n (x:xs) = x : take' (n-1) xs  

-- No need for base condition, as Haskell supports infinite lists through lazy evaluation
repeat' :: a -> [a]  
repeat' x = x:repeat' x  

-- Ok this is really elegant
quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let left = quicksort [a | a <- xs, a <= x]
        right = quicksort [a | a <- xs, a > x]
    in left ++ [x] ++ right
