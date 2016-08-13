# You are going to be given an array of integers.
# Your job is to take that array and find an index N where the sum of the
# integers to the left of N is equal to the sum of the integers to the right of N.
# If there is no index that would make this happen, return -1.

# Approach.

# Iterate through our array using #each_with_index
# Initialize variables for the left sum and right sum, then iterate again
# to determine the sum of the left side and right side. If our left side
# and right side are equal, return the index, otherwise, return the index -1

require 'pry'

def find_even_index(arr)
  arr.each_with_index do |el, i|
    left_sum = 0
    right_sum = 0

    (0..i).each do |index|
      left_sum += arr[index]
    end

    (i..arr.length - 1).each do |index|
      right_sum += arr[index]
    end

    return i if left_sum == right_sum
  end

  return -1
end

p find_even_index([1,2,3,4,3,2,1]) # => 3
