require 'pry'

# Approach.

# We need to remove all non alphanumeric characters
# Then we need to split our string and determine if our words are
# even or odd sized. If they're odd, we'll need to double the ending
# character and then return those to a new array.

def evenator(string)

  # Create a new string that contains all cleared out characters
  clean_string = string.gsub(/[.,?!_]/, '')
  result = []

  # Split our clean string and iterate over each word in the array
  # If our word size is even, then we just append the element as is
  # to our result array
  clean_string.split(' ').each do |el|
    binding.pry
    if el.size % 2 == 0
      result << el
  # If our word size is odd, we'll add the last element of that word to
  # the word, resulting in the last letter of every word being doubled.
  # We append those to our result array
    else
      result << el + el[-1]
    end
  end

  # Return our result
  result.join(' ')
end

p evenator('evenn') # => 'evennn'
#p evenator('even oddd.') # => This should return as is because it's even.
