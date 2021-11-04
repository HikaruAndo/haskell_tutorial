{- 1.hs
Hello, world!という文字列を標準出力に書き込むプログラムを書きましょう。
main = putStrLn "Hello, world!"
-}
{-
2.hs
身長1.7m, 体重60kgの人のBMIを計算して、標準出力に出力するプログラムを書きましょう。
main = print(60 / (1.7 * 1.7))
-}

{-
3.hs
main = do
    putStrLn("#     # ####### #       #        #####")
    putStrLn("#     # #       #       #       #     #")
    putStrLn("#     # #       #       #       #     #")
    putStrLn("####### #####   #       #       #     #")
    putStrLn("#     # #       #       #       #     #")
    putStrLn("#     # #       #       #       #     #")
    putStrLn("#     # ####### ####### #######  #####")
-}

{-
4.hs
標準入力から読んだ文字列を、改行文字で区切って、逆順に並び替えて標準出力に書き込みましょう。
main = do
    input <- getContents
    putStr (unlines (reverse (lines input)))
-}
{- 
1.改行を区切る linse
["Lorem ipsum dolor sit amet,","sed do eiusmod tempor incididunt ut labore et dolore magna" ,"aliqua.,consectetur adipiscing elit,"]

2.逆順にする reverse
["consectetur adipiscing elit,","sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.","Lorem ipsum dolor sit amet,"]

3.','を\nにする unlines
"consectetur adipiscing elit,\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\nLorem ipsum dolor sit amet,\n"

4.\nを改行する putStr
consectetur adipiscing elit,
sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
Lorem ipsum dolor sit amet,
-}

{-
5.hs
「元金100円、金利1%で2年間預けた場合」を計算した結果です。
readの型推論がいらないのは計算するときに確定するからっぽい
計算に含めいない値をgetLine read したらエラーになった
main = do
    line1 <- getLine
    line2 <- getLine
    line3 <- getLine
    let principal = read line1
        interestRate = read line2
        years = read line3
    print (principal * (1 + interestRate / 100) ^ years)
-}