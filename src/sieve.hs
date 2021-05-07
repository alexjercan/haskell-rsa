module Sieve where

primes :: Integral a => [a]
primes = sieve [2..]

sieve :: Integral a => [a] -> [a]
sieve [] = []
sieve (p:ps) = p : sieve [x | x <- ps, x `mod` p /= 0]