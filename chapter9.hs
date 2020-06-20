-- main = do  
--     putStrLn "Hello, what's your name?"  
--     name <- getLine  
--     putStrLn ("Hey " ++ name ++ ", you rock!")  

import Data.Char  
  
main = do  
    putStrLn "What's your first name?"  
    firstName <- getLine  
    putStrLn "What's your last name?"  
    lastName <- getLine  
    let bigFirstName = map toUpper firstName  
        bigLastName = map toUpper lastName  
    putStrLn $ "hey " ++ bigFirstName ++ " " ++ bigLastName ++ ", how are you?" 

import Control.Monad   
  
main = do  
    c <- getChar  
    when (c /= ' ') $ do  
        putChar c  
        main  

--main = do sequence (map print [1,2,3,4,5])
-- mapM_ print [1,2,3,4,5], no result
-- mapM print [1,2,3,4,5], has result

-- forever, the infinite loop monad
--   main = forever $ do  
--     putStr "Give me some input: "  
--     l <- getLine  
--     putStrLn $ map toUpper l  