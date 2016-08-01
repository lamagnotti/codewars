# Remove the smallest number from an array.

def remove_smallest(numbers)

  # If our array is empty, return an empty array
  return [] if numbers.empty?

  # We're going to delete_at whatever index contains the smallest number
  # in the array. We use #min to find out what spot in our array that is.

  numbers.delete_at(numbers.index(numbers.min))

  # Return array
  numbers
end
