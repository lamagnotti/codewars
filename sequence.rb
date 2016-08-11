require 'pry'

def length_of_sequence(arr, n)

  # The question tells us that if there are more than two occurrences
  # of the number to be searched for, return 0
  return 0 if arr.count(n) > 2

  # Create a new array to store our results in
  result = []

  # Iterate through our array using #each_with_index
  arr.each_with_index do |el, i|

  # As we're going through our array, if the given element equals the number
  # given in the argument, then we'll return the index point that happened at
  # and append it to our result.
    result << i if el == n
    #binding.pry
  end

  # We can use a ternary operator here to determine the final output.
  # If the length of the result is less than 2, return 0.
  # If the length is less than 2, then we'll output the distance between
  # the last time it appeared, and the first time it appeared
  result.length < 2 ? 0 : result.last + 1 - result.first
end

#length_of_sequence([1, 1], 1), 2,          # 2, Returns two when there are only two elements in the array
p length_of_sequence([1, 2, 3, 1], 1)        # 4, Returns four for an array of length four and the number to be searched at the boundaries
#length_of_sequence([-7, 5, 0, 2, 9, 5], 10)# 0, Returns zero if element is missing from the array
#length_of_sequence([-7, 5, 0, 2, 9, 5], 5) # 5, Returns five
#length_of_sequence([-7, 6, 2, -7, 4], -7)  # 4, Returns four
