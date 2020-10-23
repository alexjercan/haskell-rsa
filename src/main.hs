module Main where

import KeyGen ( computeN, computeE, computeD )

keygen :: Integer -> Integer -> ((Integer, Integer), (Integer, Integer))
keygen p q = ((n, e), (n, d))
  where
    n = computeN p q
    e = computeE p q
    d = computeD p q

encrypt :: (Integer, Integer) -> [Integer] -> [Integer]
encrypt _ [] = []
encrypt (n, e) (m:ms) = m ^ e `mod` n : encrypt (n, e) ms

decrypt :: (Integer, Integer) -> [Integer] -> [Integer]
decrypt _ [] = []
decrypt (n, d) (c:cs) = c ^ d `mod` n : decrypt (n, d) cs

main :: IO ()
main = undefined