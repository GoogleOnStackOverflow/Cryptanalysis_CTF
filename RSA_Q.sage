while 1:
	try:
		one_bits = int(raw_input("Bits of N = "))/2
	except ValueError:
		print("Not a number, exit.")
		break

	P = random_prime(2^(one_bits+1)-1, False, 2^one_bits)
	Q = 2
	while int(log(P*Q, 2)) != 160:
		Q = random_prime(2^(one_bits+1)-1, False, 2^one_bits)
	
	print "P = "
	print P
	print "Q = " 
	print Q
	print "N = P x Q =" 
	print P*Q