factors :: Integer -> [Integer]
factors n = [ n `quot` f | f <- [2..n `quot` 2], n `mod` f == 0 ]

is_prime :: Integer -> Bool
is_prime n = factors(n) == []

largest_prime_factor :: Integer -> Integer
largest_prime_factor n = head [ n `quot` f | f <- [2..n `quot` 2], n `mod` f == 0, is_prime(n `quot` f) ]

main = putStrLn (show (largest_prime_factor 600851475143))
