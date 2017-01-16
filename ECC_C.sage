P = Primes()
while 1:
	try:
		p = (raw_input("P = "))
		a = (raw_input("A = "))
		b = (raw_input("B = "))
	except ValueError:
		print "Not a number, exit."
		break

	E = EllipticCurve(Zmod(p),[a,b])

	if E.cardinality() not in P:
		print "Bad Curve!"
		print E.abelian_group()
	else:
		print "Passed!"