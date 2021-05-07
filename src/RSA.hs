module RSA where

import KeyGen (computeD, computeE, computeN)

keygen :: Integral a => a -> a -> ((a, a), (a, a))
keygen p q = ((n, e), (n, d))
  where
    n = computeN p q
    e = computeE p q
    d = computeD p q

encrypt :: (Integral a, Integral b) => (a, b) -> [a] -> [a]
encrypt key = map (encryptItem key)

decrypt :: (Integral a, Integral b) => (a, b) -> [a] -> [a]
decrypt key = map (decryptItem key)

encryptItem :: (Integral a, Integral b) => (a, b) -> a -> a
encryptItem (n, e) m = m ^ e `mod` n

decryptItem :: (Integral a, Integral b) => (a, b) -> a -> a
decryptItem (n, d) c = c ^ d `mod` n