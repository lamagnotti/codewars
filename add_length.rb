# Write a method that takes a String and returns an Array with the length
# of each word added to each element.

def add_length(str)
  # Init new array to store our results in
  new_array = []

  # First, we need to split the string, to break this into seperate words
  # then iterate through our string, and then calculating the length of the string
  # and storing that result into word_length
  str.split.each do |word|
    word_length = word.length

  # Assign a new string containing the word that we're iterating through, along with
  # the length of the word, then storing that into total
    total = "#{word} #{word_length}"

  # Append our new string into our currently empty array
    new_array << total
  end

  # Return results
  new_array
end

p add_length('apple ban') # => ["apple 5", "ban 3"]


# Shorter/idiomatic solution

def add_length(Str)

  # Basically the same solution as above, but on one line
  str.split.map { |word| "#{word} #{word.length}"}
end
