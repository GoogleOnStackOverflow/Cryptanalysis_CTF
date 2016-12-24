from random import random
rand = lambda n: int(n*random())
P = Primes()

while 1:
	try:
		p_bits = int(raw_input("Bits of P = "))
	except ValueError:
		print("Not a number, exit.")
		break
	p = 2
	while p < 2^p_bits or p > 2^(p_bits+1):
		p = P.next( 2^(p_bits-rand(p_bits/10)) * rand(2^(p_bits/10)) )

	a = rand(p)
	b = rand(p)
	E = EllipticCurve(Zmod(p),[a,b])
	while E.cardinality() not in P:
		a = rand(p)
		b = rand(p)
		E = EllipticCurve(Zmod(p),[a,b])

	G = E.random_element()
	m = rand(p)
	Q = m * G

	print E.abelian_group()
	print "Point G = "
	print G
	print "Point Q = "
	print Q
	print "Q = m*G, m = "
	print m

