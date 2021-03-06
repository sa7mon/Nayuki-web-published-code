{- 
 - Fast doubling Fibonacci algorithm
 - 
 - Copyright (c) 2015 Project Nayuki
 - All rights reserved. Contact Nayuki for licensing.
 - http://www.nayuki.io/page/fast-fibonacci-algorithms
 -}


-- (Public) fibonacci n = F(n)
fibonacci :: Integer -> Integer
fibonacci n | n >= 0 = a where (a, _) = fib n

-- (Private) fib n = (F(n), F(n+1))
fib :: Integer -> (Integer, Integer)
fib 0 = (0, 1)
fib n =
	let (a, b) = fib (div n 2)
		c = a * (b * 2 - a)
		d = a * a + b * b
	in if mod n 2 == 0
		then (c, d)
		else (d, c + d)
