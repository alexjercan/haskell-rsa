module Main where

import qualified RSA as R
import Sieve (primes)

keygen :: Integral a => Int -> Int -> ((a, a), (a, a))
keygen a b = R.keygen (primes !! a) (primes !! b)

encrypt :: (Integral a, Integral b) => (a, b) -> [a] -> [a]
encrypt = R.encrypt

decrypt :: (Integral a, Integral b) => (a, b) -> [a] -> [a]
decrypt = R.decrypt

main :: IO ()
main = undefined