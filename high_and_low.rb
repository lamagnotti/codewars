# In this little assignment you are given a string of space separated numbers,
# and have to return the highest and lowest number.

def high_and_low(numbers)
  new_array = []
  new_string = numbers.split
  new_string.each do |n|
    new_array << n.to_i
  end
  max_string = new_array.max
  min_string = new_array.min
  "#{max_string} #{min_string}"
end

p high_and_low("4 5 29 54 4 0 -214 542 -64 1 -3 6 -6") # => ("542 -214")
p high_and_low("1 2 3 4 5") # => ("5 1")
