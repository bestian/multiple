module Lib
    ( rollDice, rollDice2
    ) where

import System.Random 

rollDice :: IO Int
rollDice = do x <- getStdRandom (randomR (10,20))
              return $ x

rollDice2 :: IO Int
rollDice2 = do x <- getStdRandom (randomR (1,10))
               return $ x
