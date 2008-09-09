is_really_factorable :: Integer -> Integer -> Bool
is_really_factorable n 1 = True
is_really_factorable n f = n `mod` f == 0 && is_really_factorable n (f - 1)

main = putStrLn (show (head [ n | n <- [20..], is_really_factorable n 20 ]))
