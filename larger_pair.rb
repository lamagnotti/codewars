def get_larger_numbers(a, b)
  # Create a new array to store the larger numbers in
  larger_array = []

  # Init our index count
  i = 0

  while i < a.length
    # We're going to keep iterating for as long as the length of our array is

    # If our value in array a at index 0 is greater than our value at the same index
    # point in b. If it is larger, than we'll put that value in our new array
    if a[i] > b[i]
      larger_array << a[i]
    else
    # Otherwise, move the larger value from the b array into our new array
      larger_array << b[i]
    end

    # Count up by 1 through our array
    i += 1
  end

  # Return our array containing the larger numbers
  larger_array
end

p get_larger_numbers(a = [13, 64, 15, 17, 88], b = [23, 14, 53, 17, 80])
