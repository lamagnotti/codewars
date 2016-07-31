# Create a function with two arguments that will
# return a list of length (n) with multiples of (x).

def count_by(x, n)

  # First, we're going to count from 1 upto the length of our array, n.
  # Next, we'll call #map on our length, and iterate through each number
  # and multipy it by x (in this example 2
  (1..n).map { |i| i * x }

  # Since #map mutates our array, we will now have a modified array,
  # containing each element multiplied by 2, and at the length of n
end

p count_by(2, 5)
