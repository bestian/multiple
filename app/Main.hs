module Main (main) where

import Lib

makeTxt a 0 t = do return t
makeTxt a n t = do t <- makeTxt a (n-1) t
	return (show q ++ " = ?\n\n" ++ t)


loop l s e = do x <- rollDice
				y <- rollDice2
	      		putStrLn "\n請問" ++ x "是" y 的倍數嗎 ++"? y]是 n]不是\n"
                myA <- getLine
                let a = (read myA) :: String
                if (ans == "y" && y `mod` x == 0)
                   then do putStrLn $ "答對了！Geart!"
                           putStrLn $ "目前分數：" ++ show (s+1)
                           if s + 1 >= 10
                             then do putStrLn $ "你勝利了！\n\n"
                                     main
                             else loop l (s + 1) e
                else
                   do putStrLn $ "答錯了，沒關係，再接再勵。答案是" ++ show ans
                      if e + 1 >= 3
                        then main
                      else loop l s (e + 1)

main :: IO ()
main = do putStrLn "\n歡迎來到倍數小測驗！\n"
          loop a 0 0
	        
