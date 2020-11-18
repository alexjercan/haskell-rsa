# Usage

`λ> (public, private) = keygen (primes !! a) (primes !! b)`

`λ> encrypt public [Integers]`

`λ> decrypt private [Integers]`

![alt text](https://i.imgur.com/kW8jrlC.jpg)

# Details

### Key Generation

n is part of the public key and the private key
e is part of the public key
d is part of the private key

keygen returns a tuple formed by the public and private keys
public = (n, e)
private = (n, d)

1. n is the product of two primes
2. λ(n) is computed using Carmichael's totient function
but in this case since p and q are primes we can use
the lcm formula
3. e is computed such that λ(n) and e are coprime
4. d is equal to the modular multiplicative inverse of λ(n)


### Primes Generation

1. Write down the list 2,3...
2. Mark the first value as prime
3. Remove multiples of p from the list
4. Return to step 2


### Bibliography

1. https://en.wikipedia.org/wiki/RSA_%28cryptosystem%29
