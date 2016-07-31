# You get an array of numbers, return the sum of all of the positives ones.

def positive_sum(arr)

  # First, we init our sum variable
  sum = 0

  # Next, we iterate through our array using the select method, and look
  # for all of the numbers that are greater than 0. If a number is greater than 0
  # then we will add that number to our sum.
  arr.select do |el|
    if el > 0
      sum += el
    end
  end

  # Return our sum total of numbers greater than 0
  sum
end

p positive_sum([1, -4, 7, 12])
