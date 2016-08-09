# We need to get the larger number of the two arrays. If we use
# each_with_index we can iterate through the array and determine
# which number is bigger at that particluar index

def get_larger_numbers(a, b)
  new_array = []
  a.each_with_index do |num, index|

  # We use a ternary operator here to test what to push to our new_array
  # If the number in arr1 is greater than the number in arr2 at the same
  # index point, (this would eval to true), therefore, we will append
  # our num from arr1 to new_array. If num is NOT greater than the number
  # in arr2 at the same point in the index, then we'll append the num
  # from arr2 to our new_array.
    (num > b[index]) ? (new_array << num) : (new_array << b[index])
  end

  # Return our new_array containing the greatest number from each array
  # based on that spot in the index
  new_array
end

arr1 = [13, 64, 15, 17, 88]
arr2 = [23, 14, 53, 17, 80]
p get_larger_numbers(arr1, arr2) # == [23, 64, 53, 17, 88]
