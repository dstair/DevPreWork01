# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
# Project Euler - Problem 5
# Daniel Stair

# Outer loop counts up from 1 (though it only needs to go from 2520 I think) (use i)
i = 1

while i < 240000000
  # initialize our variables
  j = 0
  k = true
  
  # Inner loop divides outer loop's number by each number from 1 to 20 (use j)
    while j < 21 and k == true    
      k = i.to_f % j.to_f == 0
      j += 1
    
      if j == 20 and k == true
        puts i.to_i.to_s + " PASSES"
      end
    end
  # increment by 20 since we know the answer has to be divisible by 20
  i += 20
end