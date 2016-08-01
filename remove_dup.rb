# Remove duplicates from an array without using the #uniq method

def unique(integers)

  # Version 1
  # We can call the #| method which unions the array together, keeping only
  # unique elements
  # integers | integers

  # Version 2
  # Create a new array to store our uniq elements in
  new_array = []

  # Use each to iterate through our array, and selecting only numbers that are
  # not included in the original array. If they're not included, we'll push them
  # into our new_array
  integers.each { |x| new_array.push(x) unless new_array.include?(x) }

  # Return array with uniq elements
  new_array
end

p unique([1, 2, 3, 3, 2, 1, 2, 3, 1, 1, 3, 2])
