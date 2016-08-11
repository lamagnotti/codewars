# Approach

# To be able to combine as many arrays as given, and return a new array
# containing one element from each array in alternating fashion.

# We need to set out index point to 0 as we'll be iterating based upon
# our index. We'll use this to iterate based upon the length of the given array.

def combine(*args)
  result = []
  index = 0

  # Initialize a loop to iterate through each of our arrays

  loop do

    # We'll break out of the loop if each array's length is no longer smaller
    # than the index point we're iterating on. This will help to ensure that
    # if one array is shorter/longer than the other, that we'll still be able
    # to get the full results - without missing any elements.

    break if args.all? do |arr|
      arr.length <= index
    end

    # Iterate through our arrays one at a time. On each iteration, we'll pass in
    # the element from the first array and append that to our result array. We'll
    # continue to iterate through all of the arrays until we reach the end of our
    # arrays.
    args.each do |arr|
      result << arr[index]
    end

    # Increment our index by 1
    index += 1
  end

  # Return our array and call #compact to remove nils out of our array
  result.compact
end


p combine(['a', 'b', 'c'], [1, 2, 3]) # =>['a', 1, 'b', 2, 'c', 3]
p combine(['a', 'b', 'c'], [1, 2, 3, 4, 5]) # =>['a', 1, 'b', 2, 'c', 3, 4, 5])
