#vimpire_test
# In mathematics, a vampire number (or true vampire number) is a composite natural number v, with an even number of digits n, that can be factored into two integers x and y each with n/2 digits and not both with trailing zeroes, where v contains precisely all the digits from x and from y, in any order, counting multiplicity. x and y are called the fangs.

# Our loose definition of Vampire Numbers can be described as follows:

# 6 * 21 = 126
# # 6 and 21 would be valid 'fangs' for a vampire number as the 
# # digits 6, 1, and 2 are present in both the product and multiplicands

# 10 * 11 = 110
# # 110 is not a vampire number since there are three 1's in the
# # multiplicands, but only two 1's in the product
# Create a function that can receive two 'fangs' and determine if the product of the two is a valid vampire number.

def vampire_test(a,b)
  (a*b).to_s.each_char.to_a.sort.hash == (a.to_s+b.to_s).each_char.to_a.sort.hash
end