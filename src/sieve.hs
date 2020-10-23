module Sieve where

primes :: [Integer]
primes = sieve [2..]

sieve :: Integral a => [a] -> [a]
sieve (p:ps) = p : sieve [x | x <- ps, x `mod` p /= 0]