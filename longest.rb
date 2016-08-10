def find_longest(string)

  # Init new array
  array = []

  # We call #split on our string and assign that to arr
  arr = string.split

  # We iterate through each word, and calculate the length
  # of each word and then append that on our new array, array
  arr.each { |word| array << word.length }

  # we return the max length of the word in our array
  array.max
end

p find_longest("Take me to tinseltown with you") # => 10
