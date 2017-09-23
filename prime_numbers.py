import math
import timeit

class PrimeNumbers():
	def __init__(self):
		self.prime_list = [2]

	def get_prime_numbers(self, up_to_x):
		my_list = [x for x in range(3, up_to_x + 1, 2)]

		for prime_candidate in my_list:
			is_prime = self.check_is_prime(prime_candidate)
			if is_prime:
				self.prime_list.append(prime_candidate)

		#print (self.prime_list)

	def check_is_prime(self, check_for_prime):
		for number in range(2, check_for_prime):
			if (check_for_prime % number) == 0:
				return False
		return True

# a = range(1, 10)
# [x for x in a if x not in [2, 3, 7]]

prime = PrimeNumbers()
prime.get_prime_numbers(100)
prime.prime_list

timeit.timeit('PrimeNumbers().get_prime_numbers(10000)', number = 5, setup='from __main__ import PrimeNumbers')
