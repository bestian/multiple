module Lib
    ( Quiz rollDice, rollDice2
    ) where

import System.Random 

rollDice :: IO Quiz
rollDice = do x <- getStdRandom (randomR (10,20))
              return $ Lit x

rollDice2 :: IO Quiz
rollDice2 = do x <- getStdRandom (randomR (1,10))
               return $ Lit x

someFunc :: IO ()
someFunc = putStrLn "someFunc"
