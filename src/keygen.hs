module KeyGen where

import Sieve (primes)

computeN :: Integer -> Integer -> Integer
computeN p q = p * q

computeLambdaN :: Integer -> Integer -> Integer
computeLambdaN p q = lcm (p - 1) (q - 1)

computeE :: Integer -> Integer -> Integer
computeE p q = head [x | x <- primes, x < lambdaN, gcd lambdaN x == 1]
  where
    lambdaN = computeLambdaN p q

computeD :: Integer -> Integer -> Integer
computeD p q = modInverse a m
  where
    a = computeE p q
    m = computeLambdaN p q

modInverse :: Integral a => a -> a -> a
modInverse a m = head [x | x <- [1 .. m], a * x `mod` m == 1]