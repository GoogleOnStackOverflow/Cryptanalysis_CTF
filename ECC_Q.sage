from random import random
rand = lambda n: int(n*random())
P = Primes()

while 1:
	try:
		p_bits = int(raw_input("Bits of P = "))
	except ValueError:
		print("Not a number, exit.")
		break

	p = random_prime(2^(p_bits+1)-1, False, 2^p_bits)

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

	print int(log(p,2))
	print E.abelian_group()
	print "Point G = "
	print G
	print "Point Q = "
	print Q
	print "Q = m*G, m = "
	print m

