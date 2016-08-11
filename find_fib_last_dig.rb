# Approach

# We need to find the last digit of the fibonacci sequence.
# We can iterate on up using the times method in order to find
# the index we're looking for

def get_last_digit(index)
  first, second = 0, 1
  index.times do
    first, second = second, (first + second) % 10
  end
  first
end

p get_last_digit(193150) # => 5
p get_last_digit(1234) # => 7
