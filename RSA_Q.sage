from random import random
rand = lambda n: int(n*random())
P = Primes()

while 1:
	try:
		one_bits = int(raw_input("Bits of N = "))/2
	except ValueError:
		print("Not a number, exit.")
		break

	rand_in_bits = 2^one_bits + rand(2^(one_bits-1))
	first_p = P.next( rand_in_bits )
	rand_in_bits = 2^one_bits + rand(2^(one_bits-1))
	sec_p = P.next( rand_in_bits )
	
	print "P = "
	print first_p
	print "Q = " 
	print sec_p
	print "N = P x Q =" 
	print first_p*sec_p