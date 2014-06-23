# Goal: Answer the question "What is the largest prime factor of the number 600851475143?"
# Project Euler - Problem 3
# Daniel Stair


require 'prime'

# start at half the number given (round down if decimal). Next smallest prime factor can't exceed this amount
testnum = 600851475143
max_factor = Math.sqrt(testnum)
prime_factor_array = []

for i in 1..max_factor
  if testnum.to_f % i.to_f == 0 && i.prime?
    # add it to a list of all prime factors
    prime_factor_array << i
  end
end

puts "Valid prime factors of "+testnum.to_s+" are "+prime_factor_array.to_s
puts "the largest prime factor of "+testnum.to_s+" is "+prime_factor_array.max.to_s
