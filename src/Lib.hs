module Lib
    ( rollDice, rollDice2
    ) where

import System.Random 

rollDice :: IO Int
rollDice = do x <- getStdRandom (randomR (10,40))
              return $ x

rollDice2 :: IO Int
rollDice2 = do x <- getStdRandom (randomR (1,5))
               return $ x
