module Main (main) where

import Lib


loop :: Int -> Int -> IO ()
loop s e = do x <- rollDice
              y <- rollDice2
              putStrLn $ "\n請問" ++ show x ++ "是" ++ show y ++ "的倍數嗎? y)是 n)不是\n"
              myA <- getLine
              if (myA == "y" && x `mod` y == 0) || (myA == "n" && x `mod` y /= 0)
                 then do putStrLn "答對了！Great!"
                         let newScore = s + 1
                         putStrLn $ "目前分數：" ++ show newScore
                         if newScore >= 10
                           then putStrLn "你勝利了！\n\n" >> main
                           else loop newScore e
                 else do putStrLn "答錯了，沒關係，再接再勵。"
                         let newErrors = e + 1
                         if newErrors >= 3
                           then putStrLn "遊戲結束，再來一次吧！\n\n" >> main
                           else loop s newErrors

main :: IO ()
main = do putStrLn "\n歡迎來到倍數小測驗！\n"
          loop 0 0
            
