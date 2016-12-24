from random import random
rand = lambda n: int(n*random())
P = Primes()

while 1:
	try:
		one_bits = int(raw_input("Bits of N = "))/2
		bits_dif = int(raw_input("Bits dif = "))
	except ValueError:
		print("Not a number, exit.")
		break
	bits_dif = int(bits_dif/2)
	first_p = P.next( 2^(one_bits-bits_dif) + rand(2^(one_bits-bits_dif)) )
	sec_p = first_p

	while first_p*sec_p<2^(one_bits*2) or first_p*sec_p>=2^(one_bits*2+1) :
		if(log(first_p*sec_p,2)>(one_bits*2+1)):
			sec_p = first_p
		rand_dif = rand(2^(bits_dif+1) - 2^bits_dif)
		sec_p = P.next(sec_p * rand_dif)

	print "P = "
	print first_p
	print "Q = " 
	print sec_p
	print "N = P x Q =" 
	print first_p*sec_p