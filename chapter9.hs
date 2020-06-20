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

-- getContents: Lazyly read stdin until EOF
-- main = do  
--     contents <- getContents  
--     putStr (map toUpper contents)  

-- main = do  
--     contents <- getContents  
--     putStr (shortLinesOnly contents)  
  
-- shortLinesOnly :: String -> String  
-- shortLinesOnly input =   
--     let allLines = lines input  
--         shortLines = filter (\line -> length line < 10) allLines  
--         result = unlines shortLines  
--     in  result  

-- Interact takes a String -> String function, and returns an I/O action that will take some input, 
-- run that function on it and then print out the function's result
-- main = interact shortLinesOnly  
  
-- shortLinesOnly :: String -> String  
-- shortLinesOnly input =   
--     let allLines = lines input  
--         shortLines = filter (\line -> length line < 10) allLines  
--         result = unlines shortLines  
--     in  result  

-- Short version
-- main = interact $ unlines . filter ((<10) . length) . lines  


-- import System.IO  
  
-- main = do  
--     handle <- openFile "girlfriend.txt" ReadMode  
--     contents <- hGetContents handle  
--     putStr contents  
--     hClose handle  


-- import System.IO     
    
-- main = do     
--     withFile "girlfriend.txt" ReadMode (\handle -> do  
--         contents <- hGetContents handle     
--         putStr contents)  

-- File to string manipulation
-- import System.IO     
-- import Data.Char  
    
-- main = do     
--     contents <- readFile "girlfriend.txt"     
--     writeFile "girlfriendcaps.txt" (map toUpper contents)  