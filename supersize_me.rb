# Write a method that rearranges an interger into its largest possible value.

def super_size(numbers)

  # First we need to convert our set of numbers to a string, so we can break
  # them apart into each digit rather than one whole integer

  # Next, we'll then sort each character from smallest to biggest

  # Then, we'll reverse that set of numbers, call #join to join each number
  # back to one whole number, then call #to_i to convert it back from a string
  # to an integer
  numbers.to_s.chars.sort.reverse.join.to_i
end


p super_size(123456) # => 654321
