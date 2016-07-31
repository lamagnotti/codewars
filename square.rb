# Complete the squareSum method so that it squares each number
# passed into it and then sums the results together.

# Version 1 with clarity

def squareSum(numbers)

  # Create an empty array to store our sum in
  sum = []
  # Assign our total variable to 0 so we can return this at the end with the
  # sum total
  total = 0

  # Iterate through the array given in the argument, squaring each number passed
  # in, and then appending that to our new array sum
  numbers.each do |n|
    sum << (n * n)
  end

  # Now that we have our new array with the squared digits, we can iterate through
  # and add each elemtn together to our new variable total.
  sum.each do |el|
    total += el
  end

  # Return the total of each squared number from the original array
  total
end

p squareSum([1, 2, 2])


# Version 2, idiomatic Ruby

def squareSum(numbers)
  numbers.map { |n| n*n}.reduce(:+)
end
